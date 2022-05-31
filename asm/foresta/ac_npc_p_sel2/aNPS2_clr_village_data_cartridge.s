lbl_80568BD0:
/* 80568BD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80568BD4  7C 08 02 A6 */	mflr r0
/* 80568BD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80568BDC  39 61 00 20 */	addi r11, r1, 0x20
/* 80568BE0  4B B3 22 F5 */	bl func_8009AED4
/* 80568BE4  7C 7D 1B 78 */	mr r29, r3
/* 80568BE8  7C 9E 23 78 */	mr r30, r4
/* 80568BEC  38 60 00 04 */	li r3, 4
/* 80568BF0  38 80 00 09 */	li r4, 9
/* 80568BF4  4B E2 F8 89 */	bl mDemo_Get_OrderValue
/* 80568BF8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80568BFC  2C 00 00 02 */	cmpwi r0, 2
/* 80568C00  41 82 00 30 */	beq lbl_80568C30
/* 80568C04  40 80 00 FC */	bge lbl_80568D00
/* 80568C08  2C 00 00 01 */	cmpwi r0, 1
/* 80568C0C  40 80 00 08 */	bge lbl_80568C14
/* 80568C10  48 00 00 F0 */	b lbl_80568D00
lbl_80568C14:
/* 80568C14  38 60 00 04 */	li r3, 4
/* 80568C18  38 80 00 09 */	li r4, 9
/* 80568C1C  38 A0 00 02 */	li r5, 2
/* 80568C20  4B E2 F8 19 */	bl mDemo_Set_OrderValue
/* 80568C24  4B E5 6A 85 */	bl func_803BF6A8
/* 80568C28  4B E5 81 19 */	bl mMsg_Set_LockContinue
/* 80568C2C  48 00 00 D4 */	b lbl_80568D00
lbl_80568C30:
/* 80568C30  38 61 00 08 */	addi r3, r1, 8
/* 80568C34  4B E9 56 F1 */	bl mCD_EraseLand_bg
/* 80568C38  28 03 00 19 */	cmplwi r3, 0x19
/* 80568C3C  41 81 00 80 */	bgt lbl_80568CBC
/* 80568C40  3C 80 80 6C */	lis r4, lit_997@ha /* 0x806BE4C0@ha */
/* 80568C44  54 60 10 3A */	slwi r0, r3, 2
/* 80568C48  38 64 E4 C0 */	addi r3, r4, lit_997@l /* 0x806BE4C0@l */
/* 80568C4C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80568C50  7C 09 03 A6 */	mtctr r0
/* 80568C54  4E 80 04 20 */	bctr 
lbl_80568C58:
/* 80568C58  7F A3 EB 78 */	mr r3, r29
/* 80568C5C  38 80 00 0F */	li r4, 0xf
/* 80568C60  4B FF E8 E9 */	bl aNPS2_make_msg
/* 80568C64  7C 7F 1B 78 */	mr r31, r3
/* 80568C68  4B E5 6A 41 */	bl func_803BF6A8
/* 80568C6C  7F E4 FB 78 */	mr r4, r31
/* 80568C70  4B E5 73 55 */	bl mMsg_Set_continue_msg_num
/* 80568C74  48 00 00 64 */	b lbl_80568CD8
lbl_80568C78:
/* 80568C78  7F A3 EB 78 */	mr r3, r29
/* 80568C7C  38 80 00 26 */	li r4, 0x26
/* 80568C80  4B FF E8 C9 */	bl aNPS2_make_msg
/* 80568C84  7C 7F 1B 78 */	mr r31, r3
/* 80568C88  4B E5 6A 21 */	bl func_803BF6A8
/* 80568C8C  7F E4 FB 78 */	mr r4, r31
/* 80568C90  4B E5 73 35 */	bl mMsg_Set_continue_msg_num
/* 80568C94  48 00 00 44 */	b lbl_80568CD8
lbl_80568C98:
/* 80568C98  7F A3 EB 78 */	mr r3, r29
/* 80568C9C  38 80 00 21 */	li r4, 0x21
/* 80568CA0  4B FF E8 A9 */	bl aNPS2_make_msg
/* 80568CA4  7C 7F 1B 78 */	mr r31, r3
/* 80568CA8  4B E5 6A 01 */	bl func_803BF6A8
/* 80568CAC  7F E4 FB 78 */	mr r4, r31
/* 80568CB0  4B E5 73 15 */	bl mMsg_Set_continue_msg_num
/* 80568CB4  48 00 00 24 */	b lbl_80568CD8
lbl_80568CB8:
/* 80568CB8  48 00 00 48 */	b lbl_80568D00
lbl_80568CBC:
/* 80568CBC  7F A3 EB 78 */	mr r3, r29
/* 80568CC0  38 80 00 21 */	li r4, 0x21
/* 80568CC4  4B FF E8 85 */	bl aNPS2_make_msg
/* 80568CC8  7C 7F 1B 78 */	mr r31, r3
/* 80568CCC  4B E5 69 DD */	bl func_803BF6A8
/* 80568CD0  7F E4 FB 78 */	mr r4, r31
/* 80568CD4  4B E5 72 F1 */	bl mMsg_Set_continue_msg_num
lbl_80568CD8:
/* 80568CD8  4B E5 69 D1 */	bl func_803BF6A8
/* 80568CDC  4B E5 80 71 */	bl mMsg_Unset_LockContinue
/* 80568CE0  7F A3 EB 78 */	mr r3, r29
/* 80568CE4  7F C4 F3 78 */	mr r4, r30
/* 80568CE8  38 A0 00 1B */	li r5, 0x1b
/* 80568CEC  48 00 10 DD */	bl aNPS2_change_talk_proc
/* 80568CF0  38 60 00 04 */	li r3, 4
/* 80568CF4  38 80 00 09 */	li r4, 9
/* 80568CF8  38 A0 00 00 */	li r5, 0
/* 80568CFC  4B E2 F7 3D */	bl mDemo_Set_OrderValue
lbl_80568D00:
/* 80568D00  39 61 00 20 */	addi r11, r1, 0x20
/* 80568D04  4B B3 22 1D */	bl func_8009AF20
/* 80568D08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80568D0C  7C 08 03 A6 */	mtlr r0
/* 80568D10  38 21 00 20 */	addi r1, r1, 0x20
/* 80568D14  4E 80 00 20 */	blr 
