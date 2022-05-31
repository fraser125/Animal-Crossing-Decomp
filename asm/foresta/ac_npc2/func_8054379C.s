lbl_8054379C:
/* 8054379C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805437A0  7C 08 02 A6 */	mflr r0
/* 805437A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805437A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805437AC  7C 7F 1B 78 */	mr r31, r3
/* 805437B0  93 C1 00 08 */	stw r30, 8(r1)
/* 805437B4  7C 9E 23 78 */	mr r30, r4
/* 805437B8  80 03 08 E8 */	lwz r0, 0x8e8(r3)
/* 805437BC  90 03 01 64 */	stw r0, 0x164(r3)
/* 805437C0  80 03 08 EC */	lwz r0, 0x8ec(r3)
/* 805437C4  90 03 01 68 */	stw r0, 0x168(r3)
/* 805437C8  88 03 07 DC */	lbz r0, 0x7dc(r3)
/* 805437CC  28 00 00 FF */	cmplwi r0, 0xff
/* 805437D0  41 82 00 14 */	beq lbl_805437E4
/* 805437D4  4B FF FB E9 */	bl aNPC_set_schedule
/* 805437D8  7F E3 FB 78 */	mr r3, r31
/* 805437DC  7F C4 F3 78 */	mr r4, r30
/* 805437E0  4B FF BC 1D */	bl aNPC_action_proc
lbl_805437E4:
/* 805437E4  7F E3 FB 78 */	mr r3, r31
/* 805437E8  4B FF 7C 91 */	bl aNPC_clear_all_morph_counter
/* 805437EC  7F E3 FB 78 */	mr r3, r31
/* 805437F0  7F C4 F3 78 */	mr r4, r30
/* 805437F4  4B FF 83 F5 */	bl aNPC_anime_proc
/* 805437F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805437FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80543800  83 C1 00 08 */	lwz r30, 8(r1)
/* 80543804  7C 08 03 A6 */	mtlr r0
/* 80543808  38 21 00 10 */	addi r1, r1, 0x10
/* 8054380C  4E 80 00 20 */	blr 
