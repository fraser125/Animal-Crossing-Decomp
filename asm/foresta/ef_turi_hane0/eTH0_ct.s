lbl_80623FD4:
/* 80623FD4  38 00 00 10 */	li r0, 0x10
/* 80623FD8  B0 03 00 00 */	sth r0, 0(r3)
/* 80623FDC  A8 03 00 06 */	lha r0, 6(r3)
/* 80623FE0  2C 00 00 03 */	cmpwi r0, 3
/* 80623FE4  41 82 00 3C */	beq lbl_80624020
/* 80623FE8  40 80 00 14 */	bge lbl_80623FFC
/* 80623FEC  2C 00 00 01 */	cmpwi r0, 1
/* 80623FF0  41 82 00 18 */	beq lbl_80624008
/* 80623FF4  40 80 00 20 */	bge lbl_80624014
/* 80623FF8  48 00 00 40 */	b lbl_80624038
lbl_80623FFC:
/* 80623FFC  2C 00 00 05 */	cmpwi r0, 5
/* 80624000  40 80 00 38 */	bge lbl_80624038
/* 80624004  48 00 00 28 */	b lbl_8062402C
lbl_80624008:
/* 80624008  3C 80 80 65 */	lis r4, data_8064CF54@ha /* 0x8064CF54@ha */
/* 8062400C  C0 04 CF 54 */	lfs f0, data_8064CF54@l(r4)  /* 0x8064CF54@l */
/* 80624010  48 00 00 30 */	b lbl_80624040
lbl_80624014:
/* 80624014  3C 80 80 65 */	lis r4, lit_389@ha /* 0x8064CF58@ha */
/* 80624018  C0 04 CF 58 */	lfs f0, lit_389@l(r4)  /* 0x8064CF58@l */
/* 8062401C  48 00 00 24 */	b lbl_80624040
lbl_80624020:
/* 80624020  3C 80 80 65 */	lis r4, lit_390@ha /* 0x8064CF5C@ha */
/* 80624024  C0 04 CF 5C */	lfs f0, lit_390@l(r4)  /* 0x8064CF5C@l */
/* 80624028  48 00 00 18 */	b lbl_80624040
lbl_8062402C:
/* 8062402C  3C 80 80 65 */	lis r4, lit_391@ha /* 0x8064CF60@ha */
/* 80624030  C0 04 CF 60 */	lfs f0, lit_391@l(r4)  /* 0x8064CF60@l */
/* 80624034  48 00 00 0C */	b lbl_80624040
lbl_80624038:
/* 80624038  3C 80 80 65 */	lis r4, lit_392@ha /* 0x8064CF64@ha */
/* 8062403C  C0 04 CF 64 */	lfs f0, lit_392@l(r4)  /* 0x8064CF64@l */
lbl_80624040:
/* 80624040  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80624044  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80624048  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8062404C  4E 80 00 20 */	blr 
