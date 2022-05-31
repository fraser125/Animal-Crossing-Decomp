lbl_80416A68:
/* 80416A68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80416A6C  7C 08 02 A6 */	mflr r0
/* 80416A70  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80416A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80416A78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80416A7C  7C 7F 1B 78 */	mr r31, r3
/* 80416A80  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 80416A84  3C 63 00 02 */	addis r3, r3, 2
/* 80416A88  80 03 61 10 */	lwz r0, 0x6110(r3)
/* 80416A8C  28 00 00 03 */	cmplwi r0, 3
/* 80416A90  40 82 00 10 */	bne lbl_80416AA0
/* 80416A94  38 00 00 03 */	li r0, 3
/* 80416A98  90 1F 02 B8 */	stw r0, 0x2b8(r31)
/* 80416A9C  48 00 00 0C */	b lbl_80416AA8
lbl_80416AA0:
/* 80416AA0  38 00 00 02 */	li r0, 2
/* 80416AA4  90 1F 02 B8 */	stw r0, 0x2b8(r31)
lbl_80416AA8:
/* 80416AA8  7F E3 FB 78 */	mr r3, r31
/* 80416AAC  4B FF FE 71 */	bl Cottage_actor_ct
/* 80416AB0  7F E3 FB 78 */	mr r3, r31
/* 80416AB4  38 80 00 01 */	li r4, 1
/* 80416AB8  4B FF FA E9 */	bl Cottage_change_FGUnit
/* 80416ABC  7F E3 FB 78 */	mr r3, r31
/* 80416AC0  48 00 00 A5 */	bl Cottage_move_closed_init
/* 80416AC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80416AC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80416ACC  7C 08 03 A6 */	mtlr r0
/* 80416AD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80416AD4  4E 80 00 20 */	blr 
