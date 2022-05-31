lbl_803C2EEC:
/* 803C2EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2EF0  7C 08 02 A6 */	mflr r0
/* 803C2EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2EF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C2EFC  7C 9F 23 78 */	mr r31, r4
/* 803C2F00  93 C1 00 08 */	stw r30, 8(r1)
/* 803C2F04  7C 7E 1B 78 */	mr r30, r3
/* 803C2F08  80 84 00 00 */	lwz r4, 0(r4)
/* 803C2F0C  4B FF D1 3D */	bl func_803C0048
/* 803C2F10  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C2F14  7C 00 1A 14 */	add r0, r0, r3
/* 803C2F18  7F C3 F3 78 */	mr r3, r30
/* 803C2F1C  90 1F 00 00 */	stw r0, 0(r31)
/* 803C2F20  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C2F24  90 1E 04 20 */	stw r0, 0x420(r30)
/* 803C2F28  4B FF D7 8D */	bl mMsg_Clear_CursolIndex
/* 803C2F2C  3C 80 80 64 */	lis r4, lit_926@ha /* 0x8064261C@ha */
/* 803C2F30  7F C3 F3 78 */	mr r3, r30
/* 803C2F34  C0 24 26 1C */	lfs f1, lit_926@l(r4)  /* 0x8064261C@l */
/* 803C2F38  4B FF D7 B9 */	bl mMsg_SetTimer
/* 803C2F3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2F40  38 60 00 02 */	li r3, 2
/* 803C2F44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C2F48  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C2F4C  7C 08 03 A6 */	mtlr r0
/* 803C2F50  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2F54  4E 80 00 20 */	blr 
