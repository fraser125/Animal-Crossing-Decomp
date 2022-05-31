lbl_80540BB0:
/* 80540BB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80540BB4  7C 08 02 A6 */	mflr r0
/* 80540BB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80540BBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80540BC0  7C 7F 1B 78 */	mr r31, r3
/* 80540BC4  80 03 01 98 */	lwz r0, 0x198(r3)
/* 80540BC8  2C 00 00 01 */	cmpwi r0, 1
/* 80540BCC  40 82 00 10 */	bne lbl_80540BDC
/* 80540BD0  4B FF BB 09 */	bl aNPC_clear_left_hand_info
/* 80540BD4  7F E3 FB 78 */	mr r3, r31
/* 80540BD8  4B FF FE 0D */	bl aNPC_act_contract_return_contract
lbl_80540BDC:
/* 80540BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80540BE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80540BE4  7C 08 03 A6 */	mtlr r0
/* 80540BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80540BEC  4E 80 00 20 */	blr 
