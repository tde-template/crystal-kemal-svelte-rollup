module.exports = {
    verbose: true,
    moduleFileExtensions: ['js', 'ts', 'svelte'],
    preset: 'ts-jest',
    transform: {
        '^.+\\.svelte$': 'svelte-jester',
        '^.+\\.svelte$': ['svelte-jester', { 'preprocess': true }],
        '^.+\\.ts$': 'ts-jest',
        '^.+\\.js$': 'babel-jest',
        '.*\\.(css|styl|less|sass|scss|png|jpg|ttf|woff|woff2)$': 'jest-transform-stub'
    },
    transformIgnorePatterns: [
        '/node_modules/'
    ],
    collectCoverage: true,
    collectCoverageFrom: ['src/**/*.{svelte,js,ts}', '!**/node_modules/**'],
    coverageReporters: ['cobertura', 'lcov'],
    testResultsProcessor: 'jest-sonar-reporter'
}