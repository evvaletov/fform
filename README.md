# fForm — Fortran-Style Number Formatting for Mathematica

A Mathematica function that formats numbers in Fortran-like notation: scientific E-notation for small numbers and fixed-point for larger ones, trimmed to a specified field width.

## Usage

```mathematica
<< fForm`

(* Default 16-character field width *)
fForm[3.14159]
(* "3.1415900000000000" *)

(* Scientific E-notation for small magnitudes *)
fForm[-0.00123, 10]
(* "-1.230000000E-3" *)

(* Fixed-point for magnitudes >= 0.1 *)
fForm[42.0, 8]
(* "42.0000000" *)
```

Numbers with magnitude below 0.1 are rendered in scientific form with an `E` exponent. Numbers at or above 0.1 are rendered in fixed-point notation, truncated to fit the field width.

## Parameters

| Parameter | Description | Default |
|-----------|-------------|---------|
| `x` | Number to format | *(required)* |
| `n` | Field width (characters) | 16 |

For negative numbers the effective precision equals `n`; for non-negative numbers it is `n + 1` (the extra character compensates for the absent minus sign).

## Installation

Copy `fForm.m` to a directory on Mathematica's `$Path`, then load it:

```mathematica
<< fForm`
```

Alternatively, load by full path:

```mathematica
Get["/path/to/fForm.m"]
```

## License

[MIT](LICENSE)
