import { Request, Response } from 'express';

import * as userRepository from './infrastructure';
import * as userService from './application';

const repository = userRepository.userPrismaRepository;

const createUser = async (req: Request, res: Response) => {
  const { email, password } = req.body;
  try {
    const user = await userService.createUser({ email, password }, repository);

    res.status(201).json(user);
  } catch (error: unknown) {
    throw new Error(`Unable to create user: ${error}`);
  }
};

export const loginUser = async (req: Request, res: Response) => {
  const { email, password } = req.body;
  try {
    const user = await userService.loginUser({ email, password }, repository);

    res.status(200).json(user);
  } catch (error: unknown) {
    throw new Error(`Unable to login user: ${error}`);
  }
}


const getAllUsers = async (req: Request, res: Response, next: NextFunction) => {
  try {
    const users = await repository.getAllUsers();
    res.json(users);
  } catch (error) {
    next(error);
  }
};

// const getUserById = async (req: Request, res: Response) => {
//   const { id } = req.params;

//   try {
//     const user = await userService.getUserById(id);

//     if (!user) {
//        res.status(404).json({ error: 'User not found' });
//     }

//     res.json(user);
//   } catch (error) {
//     throw new Error(`Unable to fetch user: ${error}`);
//   }
// };

// const deleteUser = async (req: Request, res: Response) => {
//   const { id } = req.params;

//   try {
//     const user = await userService.deleteUser(id);
//     res.json(user);
//   } catch (error) {
//     throw new Error(`Unable to delete user: ${error}`);
//   }
// };

// const updateUser = async (req: Request, res: Response) => {
//   const { id } = req.params;
//   const { name, age, bio } = req.body;

//   try {
//     const user = await userService.updateUser(id, { name, age, bio });

//     res.json(user);
//   } catch (error) {
//     throw new Error(`Unable to update user: ${error}`);
//   }
// };

export { getAllUsers, createUser, getUserById, updateUser, deleteUser };