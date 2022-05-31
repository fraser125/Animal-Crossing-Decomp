lbl_804DA3D8:
/* 804DA3D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA3DC  7C 08 02 A6 */	mflr r0
/* 804DA3E0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804DA3E4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 804DA3E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA3EC  3C 85 00 03 */	addis r4, r5, 3
/* 804DA3F0  88 04 88 68 */	lbz r0, -0x7798(r4)
/* 804DA3F4  28 00 00 00 */	cmplwi r0, 0
/* 804DA3F8  41 82 00 4C */	beq lbl_804DA444
/* 804DA3FC  3C 85 00 02 */	addis r4, r5, 2
/* 804DA400  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 804DA404  88 04 00 16 */	lbz r0, 0x16(r4)
/* 804DA408  28 00 00 02 */	cmplwi r0, 2
/* 804DA40C  40 82 00 38 */	bne lbl_804DA444
/* 804DA410  4B FF FF 8D */	bl Player_actor_able_request_main_index_for_reset
/* 804DA414  2C 03 00 00 */	cmpwi r3, 0
/* 804DA418  41 82 00 2C */	beq lbl_804DA444
/* 804DA41C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DA420  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DA424  3C 63 00 03 */	addis r3, r3, 3
/* 804DA428  88 03 88 69 */	lbz r0, -0x7797(r3)
/* 804DA42C  28 00 00 03 */	cmplwi r0, 3
/* 804DA430  41 82 00 0C */	beq lbl_804DA43C
/* 804DA434  38 00 00 03 */	li r0, 3
/* 804DA438  98 03 88 69 */	stb r0, -0x7797(r3)
lbl_804DA43C:
/* 804DA43C  38 60 00 01 */	li r3, 1
/* 804DA440  48 00 00 08 */	b lbl_804DA448
lbl_804DA444:
/* 804DA444  38 60 00 00 */	li r3, 0
lbl_804DA448:
/* 804DA448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA44C  7C 08 03 A6 */	mtlr r0
/* 804DA450  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA454  4E 80 00 20 */	blr 
