lbl_804ECB2C:
/* 804ECB2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ECB30  7C 08 02 A6 */	mflr r0
/* 804ECB34  2C 04 00 00 */	cmpwi r4, 0
/* 804ECB38  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ECB3C  41 82 00 0C */	beq lbl_804ECB48
/* 804ECB40  38 80 00 1A */	li r4, 0x1a
/* 804ECB44  4B FF F9 31 */	bl Player_actor_request_main_wait_bed
lbl_804ECB48:
/* 804ECB48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ECB4C  7C 08 03 A6 */	mtlr r0
/* 804ECB50  38 21 00 10 */	addi r1, r1, 0x10
/* 804ECB54  4E 80 00 20 */	blr 
