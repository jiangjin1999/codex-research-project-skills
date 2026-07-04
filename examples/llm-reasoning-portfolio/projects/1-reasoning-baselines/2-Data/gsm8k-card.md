# Dataset Card — GSM8K

## Metadata

- Dataset: GSM8K (grade-school math word problems)
- Version: TBD (freeze before running)
- Owner: TBD
- Source: public release
- Access class: open
- License / usage constraint: confirm license before publishing derived metrics
- Storage location: local `2-Data/` (notes only)

## Purpose

Arithmetic multi-step reasoning benchmark for the baseline comparison.

## Schema

| Field | Type | Meaning | Notes |
| --- | --- | --- | --- |
| question | text | word problem | — |
| answer | text | final numeric answer + rationale | rationale not used for scoring |

## Quality checks

- Confirm split (train/test) and answer-extraction rule.
- Watch for leakage between few-shot exemplars and test items.

## Public boundary

- Dataset name and aggregate accuracy only; no row-level items in public summaries or on the board.
