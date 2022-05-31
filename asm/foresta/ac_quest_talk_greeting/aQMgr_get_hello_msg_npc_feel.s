lbl_804884A0:
/* 804884A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804884A4  7C 08 02 A6 */	mflr r0
/* 804884A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804884AC  34 03 FF FE */	addic. r0, r3, -2
/* 804884B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804884B4  93 C1 00 08 */	stw r30, 8(r1)
/* 804884B8  7C 9E 23 78 */	mr r30, r4
/* 804884BC  41 80 00 0C */	blt lbl_804884C8
/* 804884C0  2C 00 00 07 */	cmpwi r0, 7
/* 804884C4  41 80 00 08 */	blt lbl_804884CC
lbl_804884C8:
/* 804884C8  38 00 00 00 */	li r0, 0
lbl_804884CC:
/* 804884CC  3C 60 80 69 */	lis r3, feel_msg_table_464@ha /* 0x8068AEA8@ha */
/* 804884D0  54 00 10 3A */	slwi r0, r0, 2
/* 804884D4  38 63 AE A8 */	addi r3, r3, feel_msg_table_464@l /* 0x8068AEA8@l */
/* 804884D8  7F E3 00 2E */	lwzx r31, r3, r0
/* 804884DC  28 1F 00 00 */	cmplwi r31, 0
/* 804884E0  40 82 00 10 */	bne lbl_804884F0
/* 804884E4  3C 60 80 69 */	lis r3, l_hello_rage_msg@ha /* 0x8068AE00@ha */
/* 804884E8  38 03 AE 00 */	addi r0, r3, l_hello_rage_msg@l /* 0x8068AE00@l */
/* 804884EC  7C 1F 03 78 */	mr r31, r0
lbl_804884F0:
/* 804884F0  38 60 00 05 */	li r3, 5
/* 804884F4  4B F5 BE DD */	bl mQst_GetRandom
/* 804884F8  57 C0 10 3A */	slwi r0, r30, 2
/* 804884FC  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80488500  7C 63 02 14 */	add r3, r3, r0
/* 80488504  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80488508  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048850C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80488510  7C 08 03 A6 */	mtlr r0
/* 80488514  38 21 00 10 */	addi r1, r1, 0x10
/* 80488518  4E 80 00 20 */	blr 
