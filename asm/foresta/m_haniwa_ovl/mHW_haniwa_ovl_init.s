lbl_805E0894:
/* 805E0894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E0898  7C 08 02 A6 */	mflr r0
/* 805E089C  38 80 00 00 */	li r4, 0
/* 805E08A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E08A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E08A8  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805E08AC  80 BF 09 9C */	lwz r5, 0x99c(r31)
/* 805E08B0  90 9F 09 3C */	stw r4, 0x93c(r31)
/* 805E08B4  80 1F 04 7C */	lwz r0, 0x47c(r31)
/* 805E08B8  2C 00 00 01 */	cmpwi r0, 1
/* 805E08BC  41 82 00 24 */	beq lbl_805E08E0
/* 805E08C0  40 80 00 3C */	bge lbl_805E08FC
/* 805E08C4  2C 00 00 00 */	cmpwi r0, 0
/* 805E08C8  40 80 00 08 */	bge lbl_805E08D0
/* 805E08CC  48 00 00 30 */	b lbl_805E08FC
lbl_805E08D0:
/* 805E08D0  38 00 FF FF */	li r0, -1
/* 805E08D4  90 05 00 04 */	stw r0, 4(r5)
/* 805E08D8  90 85 00 10 */	stw r4, 0x10(r5)
/* 805E08DC  48 00 00 20 */	b lbl_805E08FC
lbl_805E08E0:
/* 805E08E0  38 00 00 05 */	li r0, 5
/* 805E08E4  38 60 00 06 */	li r3, 6
/* 805E08E8  90 05 00 04 */	stw r0, 4(r5)
/* 805E08EC  38 00 00 78 */	li r0, 0x78
/* 805E08F0  90 65 00 08 */	stw r3, 8(r5)
/* 805E08F4  90 85 00 0C */	stw r4, 0xc(r5)
/* 805E08F8  90 05 00 10 */	stw r0, 0x10(r5)
lbl_805E08FC:
/* 805E08FC  38 65 00 20 */	addi r3, r5, 0x20
/* 805E0900  38 80 00 16 */	li r4, 0x16
/* 805E0904  38 A0 00 20 */	li r5, 0x20
/* 805E0908  4B DD A1 41 */	bl mem_clear
/* 805E090C  38 00 00 00 */	li r0, 0
/* 805E0910  38 60 00 03 */	li r3, 3
/* 805E0914  90 1F 04 48 */	stw r0, 0x448(r31)
/* 805E0918  38 00 00 01 */	li r0, 1
/* 805E091C  B0 7F 04 78 */	sth r3, 0x478(r31)
/* 805E0920  90 1F 04 74 */	stw r0, 0x474(r31)
/* 805E0924  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E0928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E092C  7C 08 03 A6 */	mtlr r0
/* 805E0930  38 21 00 10 */	addi r1, r1, 0x10
/* 805E0934  4E 80 00 20 */	blr 