lbl_804D9B8C:
/* 804D9B8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D9B90  7C 08 02 A6 */	mflr r0
/* 804D9B94  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D9B98  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 804D9B9C  FF E0 08 90 */	fmr f31, f1
/* 804D9BA0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 804D9BA4  7C 7F 1B 78 */	mr r31, r3
/* 804D9BA8  4B FF C7 D1 */	bl Player_actor_CheckAbleMoveDemoWadeBoatBlock
/* 804D9BAC  2C 03 00 00 */	cmpwi r3, 0
/* 804D9BB0  41 82 00 28 */	beq lbl_804D9BD8
/* 804D9BB4  90 7F 12 0C */	stw r3, 0x120c(r31)
/* 804D9BB8  3C 60 80 4E */	lis r3, Player_actor_Init_ScrollDemo_forDemo_geton_boat_wade@ha /* 0x804D9A04@ha */
/* 804D9BBC  38 A3 9A 04 */	addi r5, r3, Player_actor_Init_ScrollDemo_forDemo_geton_boat_wade@l /* 0x804D9A04@l */
/* 804D9BC0  7F E4 FB 78 */	mr r4, r31
/* 804D9BC4  D3 FF 12 18 */	stfs f31, 0x1218(r31)
/* 804D9BC8  38 60 00 10 */	li r3, 0x10
/* 804D9BCC  4B EC 05 91 */	bl mDemo_Request
/* 804D9BD0  38 60 00 01 */	li r3, 1
/* 804D9BD4  48 00 00 08 */	b lbl_804D9BDC
lbl_804D9BD8:
/* 804D9BD8  38 60 00 00 */	li r3, 0
lbl_804D9BDC:
/* 804D9BDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D9BE0  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 804D9BE4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 804D9BE8  7C 08 03 A6 */	mtlr r0
/* 804D9BEC  38 21 00 20 */	addi r1, r1, 0x20
/* 804D9BF0  4E 80 00 20 */	blr 
