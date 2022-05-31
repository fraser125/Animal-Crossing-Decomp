lbl_804DF910:
/* 804DF910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF914  7C 08 02 A6 */	mflr r0
/* 804DF918  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804DF91C  38 80 01 5A */	li r4, 0x15a
/* 804DF920  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 804DF924  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF928  3C A5 00 02 */	addis r5, r5, 2
/* 804DF92C  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 804DF930  88 05 00 14 */	lbz r0, 0x14(r5)
/* 804DF934  7C 00 07 75 */	extsb. r0, r0
/* 804DF938  40 82 00 08 */	bne lbl_804DF940
/* 804DF93C  38 80 01 58 */	li r4, 0x158
lbl_804DF940:
/* 804DF940  4B FF F9 49 */	bl Player_actor_set_sound_common2
/* 804DF944  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF948  7C 08 03 A6 */	mtlr r0
/* 804DF94C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF950  4E 80 00 20 */	blr 
