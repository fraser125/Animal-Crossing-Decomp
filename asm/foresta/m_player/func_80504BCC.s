lbl_80504BCC:
/* 80504BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80504BD0  7C 08 02 A6 */	mflr r0
/* 80504BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80504BD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80504BDC  7C 9F 23 78 */	mr r31, r4
/* 80504BE0  7F E5 FB 78 */	mr r5, r31
/* 80504BE4  38 80 00 67 */	li r4, 0x67
/* 80504BE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80504BEC  7C 7E 1B 78 */	mr r30, r3
/* 80504BF0  4B FD 58 69 */	bl Player_actor_check_request_main_able
/* 80504BF4  2C 03 00 00 */	cmpwi r3, 0
/* 80504BF8  41 82 00 1C */	beq lbl_80504C14
/* 80504BFC  7F C3 F3 78 */	mr r3, r30
/* 80504C00  7F E5 FB 78 */	mr r5, r31
/* 80504C04  38 80 00 67 */	li r4, 0x67
/* 80504C08  4B FD 04 0D */	bl Player_actor_request_main_index
/* 80504C0C  38 60 00 01 */	li r3, 1
/* 80504C10  48 00 00 08 */	b lbl_80504C18
lbl_80504C14:
/* 80504C14  38 60 00 00 */	li r3, 0
lbl_80504C18:
/* 80504C18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80504C1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80504C20  83 C1 00 08 */	lwz r30, 8(r1)
/* 80504C24  7C 08 03 A6 */	mtlr r0
/* 80504C28  38 21 00 10 */	addi r1, r1, 0x10
/* 80504C2C  4E 80 00 20 */	blr 
