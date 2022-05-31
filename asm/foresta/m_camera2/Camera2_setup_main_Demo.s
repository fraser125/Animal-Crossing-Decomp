lbl_80380C04:
/* 80380C04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80380C08  7C 08 02 A6 */	mflr r0
/* 80380C0C  3C 80 80 64 */	lis r4, lit_474@ha /* 0x80641354@ha */
/* 80380C10  38 C0 00 01 */	li r6, 1
/* 80380C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80380C18  C0 04 13 54 */	lfs f0, lit_474@l(r4)  /* 0x80641354@l */
/* 80380C1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80380C20  7C 7F 1B 78 */	mr r31, r3
/* 80380C24  38 9F 1C 00 */	addi r4, r31, 0x1c00
/* 80380C28  D0 03 1C 3C */	stfs f0, 0x1c3c(r3)
/* 80380C2C  38 A4 00 10 */	addi r5, r4, 0x10
/* 80380C30  80 E3 1C 50 */	lwz r7, 0x1c50(r3)
/* 80380C34  80 03 1C 54 */	lwz r0, 0x1c54(r3)
/* 80380C38  90 E3 1C 00 */	stw r7, 0x1c00(r3)
/* 80380C3C  90 03 1C 04 */	stw r0, 0x1c04(r3)
/* 80380C40  80 03 1C 58 */	lwz r0, 0x1c58(r3)
/* 80380C44  90 03 1C 08 */	stw r0, 0x1c08(r3)
/* 80380C48  C0 03 1C 5C */	lfs f0, 0x1c5c(r3)
/* 80380C4C  D0 03 1C 0C */	stfs f0, 0x1c0c(r3)
/* 80380C50  80 03 1C 60 */	lwz r0, 0x1c60(r3)
/* 80380C54  90 03 1C 10 */	stw r0, 0x1c10(r3)
/* 80380C58  A0 03 1C 64 */	lhz r0, 0x1c64(r3)
/* 80380C5C  B0 03 1C 14 */	sth r0, 0x1c14(r3)
/* 80380C60  80 E3 1C 68 */	lwz r7, 0x1c68(r3)
/* 80380C64  80 03 1C 6C */	lwz r0, 0x1c6c(r3)
/* 80380C68  90 E3 1C 18 */	stw r7, 0x1c18(r3)
/* 80380C6C  90 03 1C 1C */	stw r0, 0x1c1c(r3)
/* 80380C70  80 03 1C 70 */	lwz r0, 0x1c70(r3)
/* 80380C74  90 03 1C 20 */	stw r0, 0x1c20(r3)
/* 80380C78  C0 03 1C 74 */	lfs f0, 0x1c74(r3)
/* 80380C7C  D0 03 1C 24 */	stfs f0, 0x1c24(r3)
/* 80380C80  80 03 1C 78 */	lwz r0, 0x1c78(r3)
/* 80380C84  90 03 1C 28 */	stw r0, 0x1c28(r3)
/* 80380C88  A0 03 1C 7C */	lhz r0, 0x1c7c(r3)
/* 80380C8C  B0 03 1C 2C */	sth r0, 0x1c2c(r3)
/* 80380C90  C0 03 1C 80 */	lfs f0, 0x1c80(r3)
/* 80380C94  D0 03 1C 30 */	stfs f0, 0x1c30(r3)
/* 80380C98  C0 03 1C 84 */	lfs f0, 0x1c84(r3)
/* 80380C9C  D0 03 1C 34 */	stfs f0, 0x1c34(r3)
/* 80380CA0  C0 03 1C 88 */	lfs f0, 0x1c88(r3)
/* 80380CA4  D0 03 1C 38 */	stfs f0, 0x1c38(r3)
/* 80380CA8  C0 23 1C 0C */	lfs f1, 0x1c0c(r3)
/* 80380CAC  4B FF E1 35 */	bl Camera2_SetCameraParameter
/* 80380CB0  7F E3 FB 78 */	mr r3, r31
/* 80380CB4  4B FF D2 89 */	bl Camera2_SetView
/* 80380CB8  7F E3 FB 78 */	mr r3, r31
/* 80380CBC  4B FF DD D9 */	bl Camera2_setup_main_Base
/* 80380CC0  38 00 00 00 */	li r0, 0
/* 80380CC4  90 1F 1B F4 */	stw r0, 0x1bf4(r31)
/* 80380CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80380CCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80380CD0  7C 08 03 A6 */	mtlr r0
/* 80380CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80380CD8  4E 80 00 20 */	blr 
