import numpy as np
a = np.array([[1,2,3,4,5],[2,4,5,6,7],[5,7,8,9,9]])

print(a)

d= np.array([2,3,4,5,6])

print(d)

print(d.shape)

e=np.array([[1,2,3,4],[3,4,5,6]])
print(e)

print(e.shape)

data=np.arange(1,5)
print(data.dtype)
print(data.astype('float64'))
print(data.astype('int32'))

print(np.zeros((2,10)))
print(np.ones((2,10)))

print(np.arange(2,10))

a=np.ones((2,3))
print(a)

b=np.transpose(a)
print(b)

arr1=np.array([[2,3,4], [6, 7, 8]])
arr2=np.array([[12, 23, 14], [36, 47, 58]])

print(arr1+arr2)

print(arr1 * arr2)

print(arr1/arr2)