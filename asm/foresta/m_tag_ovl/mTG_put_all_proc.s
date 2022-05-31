lbl_805F5C90:
/* 805F5C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F5C94  7C 08 02 A6 */	mflr r0
/* 805F5C98  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805F5C9C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805F5CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F5CA4  3C A5 00 02 */	addis r5, r5, 2
/* 805F5CA8  88 05 60 01 */	lbz r0, 0x6001(r5)
/* 805F5CAC  2C 00 00 01 */	cmpwi r0, 1
/* 805F5CB0  41 82 00 20 */	beq lbl_805F5CD0
/* 805F5CB4  40 80 00 20 */	bge lbl_805F5CD4
/* 805F5CB8  2C 00 00 00 */	cmpwi r0, 0
/* 805F5CBC  40 80 00 0C */	bge lbl_805F5CC8
/* 805F5CC0  48 00 00 14 */	b lbl_805F5CD4
/* 805F5CC4  48 00 00 10 */	b lbl_805F5CD4
lbl_805F5CC8:
/* 805F5CC8  4B FF F8 3D */	bl mTG_field_put_proc
/* 805F5CCC  48 00 00 08 */	b lbl_805F5CD4
lbl_805F5CD0:
/* 805F5CD0  4B FF FB A9 */	bl mTG_room_put_proc
lbl_805F5CD4:
/* 805F5CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F5CD8  7C 08 03 A6 */	mtlr r0
/* 805F5CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 805F5CE0  4E 80 00 20 */	blr 
