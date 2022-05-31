lbl_8051AB44:
/* 8051AB44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051AB48  7C 08 02 A6 */	mflr r0
/* 8051AB4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051AB50  54 A0 08 3C */	slwi r0, r5, 1
/* 8051AB54  7C 63 02 14 */	add r3, r3, r0
/* 8051AB58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051AB5C  7C 9F 23 78 */	mr r31, r4
/* 8051AB60  38 80 00 01 */	li r4, 1
/* 8051AB64  A0 63 00 34 */	lhz r3, 0x34(r3)
/* 8051AB68  4B FF FF 79 */	bl aEBR2_set_msg_data_item_name
/* 8051AB6C  4B EA 4B 3D */	bl func_803BF6A8
/* 8051AB70  7F E5 FB 78 */	mr r5, r31
/* 8051AB74  38 80 00 01 */	li r4, 1
/* 8051AB78  38 C0 00 08 */	li r6, 8
/* 8051AB7C  4B EA 50 D9 */	bl mMsg_Set_free_str
/* 8051AB80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051AB84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051AB88  7C 08 03 A6 */	mtlr r0
/* 8051AB8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051AB90  4E 80 00 20 */	blr 
