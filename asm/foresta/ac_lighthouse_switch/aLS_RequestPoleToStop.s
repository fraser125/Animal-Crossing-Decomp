lbl_8042BFE8:
/* 8042BFE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042BFEC  7C 08 02 A6 */	mflr r0
/* 8042BFF0  3C A0 80 64 */	lis r5, data_8064409C@ha /* 0x8064409C@ha */
/* 8042BFF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042BFF8  38 00 00 00 */	li r0, 0
/* 8042BFFC  C0 25 40 9C */	lfs f1, data_8064409C@l(r5)  /* 0x8064409C@l */
/* 8042C000  B0 03 03 20 */	sth r0, 0x320(r3)
/* 8042C004  90 03 03 28 */	stw r0, 0x328(r3)
/* 8042C008  7C 83 23 78 */	mr r3, r4
/* 8042C00C  38 80 00 01 */	li r4, 1
/* 8042C010  4B F8 CA 51 */	bl mEnv_RequestChangeLightOFF
/* 8042C014  38 60 00 C9 */	li r3, 0xc9
/* 8042C018  48 20 1F 0D */	bl sAdo_SysLevStop
/* 8042C01C  38 60 40 79 */	li r3, 0x4079
/* 8042C020  48 20 1C E5 */	bl sAdo_SysTrgStart
/* 8042C024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042C028  7C 08 03 A6 */	mtlr r0
/* 8042C02C  38 21 00 10 */	addi r1, r1, 0x10
/* 8042C030  4E 80 00 20 */	blr 
