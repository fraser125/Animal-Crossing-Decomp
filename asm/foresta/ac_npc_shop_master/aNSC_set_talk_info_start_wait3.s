lbl_80579160:
/* 80579160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80579164  7C 08 02 A6 */	mflr r0
/* 80579168  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057916C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80579170  7C 7F 1B 78 */	mr r31, r3
/* 80579174  4B FF FC 91 */	bl aNSC_get_start_call_msg_no
/* 80579178  4B FF F1 05 */	bl aNSC_get_msg_no
/* 8057917C  4B E1 F3 99 */	bl mDemo_Set_msg_num
/* 80579180  38 00 00 01 */	li r0, 1
/* 80579184  90 1F 09 98 */	stw r0, 0x998(r31)
/* 80579188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057918C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80579190  7C 08 03 A6 */	mtlr r0
/* 80579194  38 21 00 10 */	addi r1, r1, 0x10
/* 80579198  4E 80 00 20 */	blr 
