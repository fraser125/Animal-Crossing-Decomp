lbl_8058E4D8:
/* 8058E4D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058E4DC  7C 08 02 A6 */	mflr r0
/* 8058E4E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058E4E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8058E4E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8058E4EC  4B E4 3A 15 */	bl mNpc_GetNpcLooks
/* 8058E4F0  3C 80 80 6C */	lis r4, msg_base_570@ha /* 0x806C257C@ha */
/* 8058E4F4  7C 7F 1B 78 */	mr r31, r3
/* 8058E4F8  38 04 25 7C */	addi r0, r4, msg_base_570@l /* 0x806C257C@l */
/* 8058E4FC  38 60 00 25 */	li r3, 0x25
/* 8058E500  7C 1E 03 78 */	mr r30, r0
/* 8058E504  38 80 00 01 */	li r4, 1
/* 8058E508  4B E0 F5 F9 */	bl mEv_check_status
/* 8058E50C  2C 03 00 01 */	cmpwi r3, 1
/* 8058E510  40 82 00 10 */	bne lbl_8058E520
/* 8058E514  3C 60 80 6C */	lis r3, msg_base2_571@ha /* 0x806C2594@ha */
/* 8058E518  38 03 25 94 */	addi r0, r3, msg_base2_571@l /* 0x806C2594@l */
/* 8058E51C  7C 1E 03 78 */	mr r30, r0
lbl_8058E520:
/* 8058E520  4B AC E7 D5 */	bl fqrand
/* 8058E524  3C 60 80 65 */	lis r3, lit_565@ha /* 0x80649BDC@ha */
/* 8058E528  57 E0 10 3A */	slwi r0, r31, 2
/* 8058E52C  C0 03 9B DC */	lfs f0, lit_565@l(r3)  /* 0x80649BDC@l */
/* 8058E530  7C 1E 00 2E */	lwzx r0, r30, r0
/* 8058E534  EC 00 00 72 */	fmuls f0, f0, f1
/* 8058E538  FC 00 00 1E */	fctiwz f0, f0
/* 8058E53C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8058E540  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8058E544  7C 60 1A 14 */	add r3, r0, r3
/* 8058E548  4B E0 9F CD */	bl mDemo_Set_msg_num
/* 8058E54C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058E550  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8058E554  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8058E558  7C 08 03 A6 */	mtlr r0
/* 8058E55C  38 21 00 20 */	addi r1, r1, 0x20
/* 8058E560  4E 80 00 20 */	blr 
