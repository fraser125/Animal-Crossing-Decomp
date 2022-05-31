lbl_803C49EC:
/* 803C49EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C49F0  7C 08 02 A6 */	mflr r0
/* 803C49F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C49F8  38 A1 00 08 */	addi r5, r1, 8
/* 803C49FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803C4A00  7C 9F 23 78 */	mr r31, r4
/* 803C4A04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803C4A08  7C 7E 1B 78 */	mr r30, r3
/* 803C4A0C  80 84 00 00 */	lwz r4, 0(r4)
/* 803C4A10  4B FF BB E5 */	bl mMsg_Get_sound_trg_sys
/* 803C4A14  80 61 00 08 */	lwz r3, 8(r1)
/* 803C4A18  4B FF D9 BD */	bl mMsg_sound_sound_trg_sys
/* 803C4A1C  80 9F 00 00 */	lwz r4, 0(r31)
/* 803C4A20  7F C3 F3 78 */	mr r3, r30
/* 803C4A24  4B FF B6 25 */	bl func_803C0048
/* 803C4A28  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C4A2C  7C 00 1A 14 */	add r0, r0, r3
/* 803C4A30  38 60 00 00 */	li r3, 0
/* 803C4A34  90 1F 00 00 */	stw r0, 0(r31)
/* 803C4A38  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C4A3C  90 1E 04 20 */	stw r0, 0x420(r30)
/* 803C4A40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803C4A44  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803C4A48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C4A4C  7C 08 03 A6 */	mtlr r0
/* 803C4A50  38 21 00 20 */	addi r1, r1, 0x20
/* 803C4A54  4E 80 00 20 */	blr 
