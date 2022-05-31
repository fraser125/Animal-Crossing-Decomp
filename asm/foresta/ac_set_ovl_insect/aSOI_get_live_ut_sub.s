lbl_8049A9BC:
/* 8049A9BC  54 A0 08 3C */	slwi r0, r5, 1
/* 8049A9C0  38 A0 00 00 */	li r5, 0
/* 8049A9C4  7C 63 02 14 */	add r3, r3, r0
/* 8049A9C8  A0 03 00 04 */	lhz r0, 4(r3)
/* 8049A9CC  7C 00 26 30 */	sraw r0, r0, r4
/* 8049A9D0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8049A9D4  41 82 00 08 */	beq lbl_8049A9DC
/* 8049A9D8  38 A0 00 01 */	li r5, 1
lbl_8049A9DC:
/* 8049A9DC  7C A3 2B 78 */	mr r3, r5
/* 8049A9E0  4E 80 00 20 */	blr 
