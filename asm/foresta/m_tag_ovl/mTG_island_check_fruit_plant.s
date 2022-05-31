lbl_805F5180:
/* 805F5180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F5184  7C 08 02 A6 */	mflr r0
/* 805F5188  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 805F518C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F5190  38 03 D8 00 */	addi r0, r3, -10240
/* 805F5194  28 00 00 07 */	cmplwi r0, 7
/* 805F5198  41 81 00 94 */	bgt lbl_805F522C
/* 805F519C  3C 60 80 6D */	lis r3, lit_2164@ha /* 0x806D0B38@ha */
/* 805F51A0  54 00 10 3A */	slwi r0, r0, 2
/* 805F51A4  38 63 0B 38 */	addi r3, r3, lit_2164@l /* 0x806D0B38@l */
/* 805F51A8  7C 03 00 2E */	lwzx r0, r3, r0
/* 805F51AC  7C 09 03 A6 */	mtctr r0
/* 805F51B0  4E 80 04 20 */	bctr 
lbl_805F51B4:
/* 805F51B4  38 60 40 00 */	li r3, 0x4000
/* 805F51B8  4B DB EE 61 */	bl mISL_SetNowPlayerAction
/* 805F51BC  38 60 01 00 */	li r3, 0x100
/* 805F51C0  4B DB EE 59 */	bl mISL_SetNowPlayerAction
/* 805F51C4  48 00 00 68 */	b lbl_805F522C
lbl_805F51C8:
/* 805F51C8  3C 60 00 01 */	lis r3, 1
/* 805F51CC  4B DB EE 4D */	bl mISL_SetNowPlayerAction
/* 805F51D0  38 60 01 00 */	li r3, 0x100
/* 805F51D4  4B DB EE 45 */	bl mISL_SetNowPlayerAction
/* 805F51D8  48 00 00 54 */	b lbl_805F522C
lbl_805F51DC:
/* 805F51DC  3C 60 00 02 */	lis r3, 2
/* 805F51E0  4B DB EE 39 */	bl mISL_SetNowPlayerAction
/* 805F51E4  38 60 01 00 */	li r3, 0x100
/* 805F51E8  4B DB EE 31 */	bl mISL_SetNowPlayerAction
/* 805F51EC  48 00 00 40 */	b lbl_805F522C
lbl_805F51F0:
/* 805F51F0  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 805F51F4  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 805F51F8  4B DB EE 21 */	bl mISL_SetNowPlayerAction
/* 805F51FC  38 60 01 00 */	li r3, 0x100
/* 805F5200  4B DB EE 19 */	bl mISL_SetNowPlayerAction
/* 805F5204  48 00 00 28 */	b lbl_805F522C
lbl_805F5208:
/* 805F5208  3C 60 00 04 */	lis r3, 4
/* 805F520C  4B DB EE 0D */	bl mISL_SetNowPlayerAction
/* 805F5210  38 60 01 00 */	li r3, 0x100
/* 805F5214  4B DB EE 05 */	bl mISL_SetNowPlayerAction
/* 805F5218  48 00 00 14 */	b lbl_805F522C
lbl_805F521C:
/* 805F521C  3C 60 00 08 */	lis r3, 8
/* 805F5220  4B DB ED F9 */	bl mISL_SetNowPlayerAction
/* 805F5224  38 60 01 00 */	li r3, 0x100
/* 805F5228  4B DB ED F1 */	bl mISL_SetNowPlayerAction
lbl_805F522C:
/* 805F522C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F5230  7C 08 03 A6 */	mtlr r0
/* 805F5234  38 21 00 10 */	addi r1, r1, 0x10
/* 805F5238  4E 80 00 20 */	blr 
