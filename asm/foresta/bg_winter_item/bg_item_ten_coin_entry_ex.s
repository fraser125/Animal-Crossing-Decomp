lbl_804BF83C:
/* 804BF83C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BF840  7C 08 02 A6 */	mflr r0
/* 804BF844  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804BF848  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 804BF84C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BF850  3C C5 00 02 */	addis r6, r5, 2
/* 804BF854  80 C6 60 80 */	lwz r6, 0x6080(r6)
/* 804BF858  7C 85 23 78 */	mr r5, r4
/* 804BF85C  7C 64 1B 78 */	mr r4, r3
/* 804BF860  80 66 00 00 */	lwz r3, 0(r6)
/* 804BF864  3C 63 00 01 */	addis r3, r3, 1
/* 804BF868  38 63 37 E4 */	addi r3, r3, 0x37e4
/* 804BF86C  4B FF FF 51 */	bl bIT_actor_ten_coin_entry
/* 804BF870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BF874  7C 08 03 A6 */	mtlr r0
/* 804BF878  38 21 00 10 */	addi r1, r1, 0x10
/* 804BF87C  4E 80 00 20 */	blr 
