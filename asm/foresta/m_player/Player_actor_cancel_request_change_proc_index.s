lbl_804DA4D0:
/* 804DA4D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA4D4  7C 08 02 A6 */	mflr r0
/* 804DA4D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA4DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DA4E0  7C 7F 1B 78 */	mr r31, r3
/* 804DA4E4  80 03 0D 10 */	lwz r0, 0xd10(r3)
/* 804DA4E8  2C 00 00 00 */	cmpwi r0, 0
/* 804DA4EC  41 82 00 2C */	beq lbl_804DA518
/* 804DA4F0  80 7F 0D 08 */	lwz r3, 0xd08(r31)
/* 804DA4F4  4B FF FE 3D */	bl Player_actor_check_cancel_request_change_proc_index
/* 804DA4F8  2C 03 00 00 */	cmpwi r3, 0
/* 804DA4FC  41 82 00 1C */	beq lbl_804DA518
/* 804DA500  38 60 FF FF */	li r3, -1
/* 804DA504  38 00 00 00 */	li r0, 0
/* 804DA508  90 7F 0D 0C */	stw r3, 0xd0c(r31)
/* 804DA50C  38 60 00 01 */	li r3, 1
/* 804DA510  90 1F 0D 10 */	stw r0, 0xd10(r31)
/* 804DA514  48 00 00 08 */	b lbl_804DA51C
lbl_804DA518:
/* 804DA518  38 60 00 00 */	li r3, 0
lbl_804DA51C:
/* 804DA51C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA520  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DA524  7C 08 03 A6 */	mtlr r0
/* 804DA528  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA52C  4E 80 00 20 */	blr 
