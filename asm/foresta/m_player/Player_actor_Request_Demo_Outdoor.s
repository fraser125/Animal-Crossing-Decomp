lbl_804E9B2C:
/* 804E9B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E9B30  7C 08 02 A6 */	mflr r0
/* 804E9B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9B38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E9B3C  7C 7F 1B 78 */	mr r31, r3
/* 804E9B40  80 03 0D 18 */	lwz r0, 0xd18(r3)
/* 804E9B44  2C 00 00 00 */	cmpwi r0, 0
/* 804E9B48  40 82 00 44 */	bne lbl_804E9B8C
/* 804E9B4C  7F E4 FB 78 */	mr r4, r31
/* 804E9B50  38 60 00 0B */	li r3, 0xb
/* 804E9B54  4B EB 07 11 */	bl mDemo_Check
/* 804E9B58  2C 03 00 00 */	cmpwi r3, 0
/* 804E9B5C  41 82 00 14 */	beq lbl_804E9B70
/* 804E9B60  38 00 00 01 */	li r0, 1
/* 804E9B64  38 60 00 00 */	li r3, 0
/* 804E9B68  90 1F 0D 18 */	stw r0, 0xd18(r31)
/* 804E9B6C  48 00 00 24 */	b lbl_804E9B90
lbl_804E9B70:
/* 804E9B70  3C 60 80 4F */	lis r3, Player_actor_Demo_Outdoor_Demo_ct@ha /* 0x804E9B28@ha */
/* 804E9B74  7F E4 FB 78 */	mr r4, r31
/* 804E9B78  38 A3 9B 28 */	addi r5, r3, Player_actor_Demo_Outdoor_Demo_ct@l /* 0x804E9B28@l */
/* 804E9B7C  38 60 00 0B */	li r3, 0xb
/* 804E9B80  4B EB 05 DD */	bl mDemo_Request
/* 804E9B84  38 60 00 00 */	li r3, 0
/* 804E9B88  48 00 00 08 */	b lbl_804E9B90
lbl_804E9B8C:
/* 804E9B8C  38 60 00 01 */	li r3, 1
lbl_804E9B90:
/* 804E9B90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E9B94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E9B98  7C 08 03 A6 */	mtlr r0
/* 804E9B9C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E9BA0  4E 80 00 20 */	blr 
