lbl_80416B9C:
/* 80416B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80416BA0  7C 08 02 A6 */	mflr r0
/* 80416BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80416BA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80416BAC  7C 9F 23 78 */	mr r31, r4
/* 80416BB0  93 C1 00 08 */	stw r30, 8(r1)
/* 80416BB4  7C 7E 1B 78 */	mr r30, r3
/* 80416BB8  7F C4 F3 78 */	mr r4, r30
/* 80416BBC  38 60 00 03 */	li r3, 3
/* 80416BC0  4B F8 36 A5 */	bl mDemo_Check
/* 80416BC4  2C 03 00 00 */	cmpwi r3, 0
/* 80416BC8  41 82 00 28 */	beq lbl_80416BF0
/* 80416BCC  80 1E 02 BC */	lwz r0, 0x2bc(r30)
/* 80416BD0  2C 00 00 01 */	cmpwi r0, 1
/* 80416BD4  40 82 00 10 */	bne lbl_80416BE4
/* 80416BD8  7F C3 F3 78 */	mr r3, r30
/* 80416BDC  48 00 00 D9 */	bl Cottage_move_wait_pl_in_init
/* 80416BE0  48 00 00 BC */	b lbl_80416C9C
lbl_80416BE4:
/* 80416BE4  7F C3 F3 78 */	mr r3, r30
/* 80416BE8  48 00 01 45 */	bl Cottage_move_wait_pl_out_init
/* 80416BEC  48 00 00 B0 */	b lbl_80416C9C
lbl_80416BF0:
/* 80416BF0  7F C4 F3 78 */	mr r4, r30
/* 80416BF4  38 60 00 08 */	li r3, 8
/* 80416BF8  4B F8 36 6D */	bl mDemo_Check
/* 80416BFC  2C 03 00 00 */	cmpwi r3, 0
/* 80416C00  40 82 00 9C */	bne lbl_80416C9C
/* 80416C04  7F C3 F3 78 */	mr r3, r30
/* 80416C08  7F E4 FB 78 */	mr r4, r31
/* 80416C0C  4B FF F5 E9 */	bl Cottage_check_door_action
/* 80416C10  7C 7F 1B 78 */	mr r31, r3
/* 80416C14  7F C3 F3 78 */	mr r3, r30
/* 80416C18  4B FF F2 05 */	bl func_80415E1C
/* 80416C1C  2C 1F 00 00 */	cmpwi r31, 0
/* 80416C20  41 82 00 08 */	beq lbl_80416C28
/* 80416C24  93 FE 02 BC */	stw r31, 0x2bc(r30)
lbl_80416C28:
/* 80416C28  2C 1F 00 01 */	cmpwi r31, 1
/* 80416C2C  40 82 00 18 */	bne lbl_80416C44
/* 80416C30  80 A3 00 30 */	lwz r5, 0x30(r3)
/* 80416C34  7F C4 F3 78 */	mr r4, r30
/* 80416C38  38 60 00 03 */	li r3, 3
/* 80416C3C  4B F8 35 21 */	bl mDemo_Request
/* 80416C40  48 00 00 5C */	b lbl_80416C9C
lbl_80416C44:
/* 80416C44  2C 1F 00 03 */	cmpwi r31, 3
/* 80416C48  40 82 00 10 */	bne lbl_80416C58
/* 80416C4C  7F C3 F3 78 */	mr r3, r30
/* 80416C50  48 00 01 2D */	bl Cottage_move_open_in_init
/* 80416C54  48 00 00 48 */	b lbl_80416C9C
lbl_80416C58:
/* 80416C58  2C 1F 00 02 */	cmpwi r31, 2
/* 80416C5C  40 82 00 10 */	bne lbl_80416C6C
/* 80416C60  7F C3 F3 78 */	mr r3, r30
/* 80416C64  48 00 02 4D */	bl Cottage_move_open_pl_out_init
/* 80416C68  48 00 00 34 */	b lbl_80416C9C
lbl_80416C6C:
/* 80416C6C  2C 1F 00 04 */	cmpwi r31, 4
/* 80416C70  40 82 00 10 */	bne lbl_80416C80
/* 80416C74  7F C3 F3 78 */	mr r3, r30
/* 80416C78  48 00 02 C5 */	bl Cottage_move_open_npc_out_init
/* 80416C7C  48 00 00 20 */	b lbl_80416C9C
lbl_80416C80:
/* 80416C80  2C 1F 00 05 */	cmpwi r31, 5
/* 80416C84  40 82 00 18 */	bne lbl_80416C9C
/* 80416C88  3C 60 80 41 */	lis r3, Cottage_demo_speak_go_out@ha /* 0x804168B8@ha */
/* 80416C8C  7F C4 F3 78 */	mr r4, r30
/* 80416C90  38 A3 68 B8 */	addi r5, r3, Cottage_demo_speak_go_out@l /* 0x804168B8@l */
/* 80416C94  38 60 00 08 */	li r3, 8
/* 80416C98  4B F8 34 C5 */	bl mDemo_Request
lbl_80416C9C:
/* 80416C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80416CA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80416CA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80416CA8  7C 08 03 A6 */	mtlr r0
/* 80416CAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80416CB0  4E 80 00 20 */	blr 
