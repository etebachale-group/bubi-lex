"use server";
import { cookies } from 'next/headers';
import { revalidatePath } from 'next/cache';

export async function logout() {
  cookies().delete('admin_session');
  revalidatePath('/admin');
  revalidatePath('/');
}
