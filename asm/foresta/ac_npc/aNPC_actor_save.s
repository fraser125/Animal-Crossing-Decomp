lbl_805394AC:
/* 805394AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805394B0  7C 08 02 A6 */	mflr r0
/* 805394B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805394B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805394BC  7C 7F 1B 78 */	mr r31, r3
/* 805394C0  4B E6 19 F9 */	bl mEv_CheckTitleDemo
/* 805394C4  2C 03 00 00 */	cmpwi r3, 0
/* 805394C8  41 81 00 54 */	bgt lbl_8053951C
/* 805394CC  A0 1F 00 06 */	lhz r0, 6(r31)
/* 805394D0  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 805394D4  2C 00 00 0E */	cmpwi r0, 0xe
/* 805394D8  40 82 00 10 */	bne lbl_805394E8
/* 805394DC  7F E3 FB 78 */	mr r3, r31
/* 805394E0  4B FF FE 55 */	bl func_80539334
/* 805394E4  48 00 00 0C */	b lbl_805394F0
lbl_805394E8:
/* 805394E8  7F E3 FB 78 */	mr r3, r31
/* 805394EC  4B FF FF 69 */	bl aNPC_actor_save_for_special
lbl_805394F0:
/* 805394F0  A8 1F 09 14 */	lha r0, 0x914(r31)
/* 805394F4  2C 00 46 50 */	cmpwi r0, 0x4650
/* 805394F8  41 80 00 1C */	blt lbl_80539514
/* 805394FC  80 9F 01 80 */	lwz r4, 0x180(r31)
/* 80539500  28 04 00 00 */	cmplwi r4, 0
/* 80539504  41 82 00 10 */	beq lbl_80539514
/* 80539508  38 7F 00 28 */	addi r3, r31, 0x28
/* 8053950C  38 84 00 10 */	addi r4, r4, 0x10
/* 80539510  4B E8 19 AD */	bl xyz_t_move
lbl_80539514:
/* 80539514  7F E3 FB 78 */	mr r3, r31
/* 80539518  4B E9 6C 31 */	bl mNpc_RenewalSetNpc
lbl_8053951C:
/* 8053951C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80539520  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80539524  7C 08 03 A6 */	mtlr r0
/* 80539528  38 21 00 10 */	addi r1, r1, 0x10
/* 8053952C  4E 80 00 20 */	blr 
