lbl_803C4888:
/* 803C4888  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C488C  7C 08 02 A6 */	mflr r0
/* 803C4890  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C4894  38 A1 00 0C */	addi r5, r1, 0xc
/* 803C4898  38 C1 00 08 */	addi r6, r1, 8
/* 803C489C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803C48A0  7C 9F 23 78 */	mr r31, r4
/* 803C48A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803C48A8  7C 7E 1B 78 */	mr r30, r3
/* 803C48AC  80 84 00 00 */	lwz r4, 0(r4)
/* 803C48B0  4B FF BB 99 */	bl mMsg_Get_bgm_make
/* 803C48B4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803C48B8  80 81 00 08 */	lwz r4, 8(r1)
/* 803C48BC  4B FF DA 51 */	bl mMsg_sound_bgm_make
/* 803C48C0  80 9F 00 00 */	lwz r4, 0(r31)
/* 803C48C4  7F C3 F3 78 */	mr r3, r30
/* 803C48C8  4B FF B7 81 */	bl func_803C0048
/* 803C48CC  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C48D0  7C 00 1A 14 */	add r0, r0, r3
/* 803C48D4  38 60 00 00 */	li r3, 0
/* 803C48D8  90 1F 00 00 */	stw r0, 0(r31)
/* 803C48DC  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C48E0  90 1E 04 20 */	stw r0, 0x420(r30)
/* 803C48E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803C48E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803C48EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C48F0  7C 08 03 A6 */	mtlr r0
/* 803C48F4  38 21 00 20 */	addi r1, r1, 0x20
/* 803C48F8  4E 80 00 20 */	blr 
