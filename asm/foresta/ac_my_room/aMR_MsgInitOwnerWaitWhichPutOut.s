lbl_804748D0:
/* 804748D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804748D4  7C 08 02 A6 */	mflr r0
/* 804748D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804748DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804748E0  7C 7F 1B 78 */	mr r31, r3
/* 804748E4  4B F4 AD C5 */	bl func_803BF6A8
/* 804748E8  4B F4 C3 B1 */	bl mMsg_Check_MainNormalContinue
/* 804748EC  2C 03 00 00 */	cmpwi r3, 0
/* 804748F0  41 82 00 14 */	beq lbl_80474904
/* 804748F4  38 00 00 07 */	li r0, 7
/* 804748F8  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 804748FC  4B F0 EC 45 */	bl func_80383540
/* 80474900  4B F0 FB E9 */	bl mChoice_no_b_close_set
lbl_80474904:
/* 80474904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80474908  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047490C  7C 08 03 A6 */	mtlr r0
/* 80474910  38 21 00 10 */	addi r1, r1, 0x10
/* 80474914  4E 80 00 20 */	blr 
