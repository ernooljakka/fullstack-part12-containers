import React from 'react';
import { render, screen } from '@testing-library/react';
import '@testing-library/jest-dom';
import Todo from './Todo';

describe('Todo component', () => {
  test('renders todo text and done status', () => {
    const todo = { text: 'Test Todo', done: true };
    render(<Todo todo={todo} />);
    expect(screen.getByText('Test Todo')).toBeInTheDocument();
  });
});
