lbl_8054CA5C:
/* 8054CA5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054CA60  7C 08 02 A6 */	mflr r0
/* 8054CA64  38 60 00 04 */	li r3, 4
/* 8054CA68  38 80 00 01 */	li r4, 1
/* 8054CA6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054CA70  38 A0 00 03 */	li r5, 3
/* 8054CA74  4B E4 B9 C5 */	bl mDemo_Set_OrderValue
/* 8054CA78  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054CA7C  38 00 00 08 */	li r0, 8
/* 8054CA80  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054CA84  3C 63 00 02 */	addis r3, r3, 2
/* 8054CA88  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 8054CA8C  98 03 00 0D */	stb r0, 0xd(r3)
/* 8054CA90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054CA94  7C 08 03 A6 */	mtlr r0
/* 8054CA98  38 21 00 10 */	addi r1, r1, 0x10
/* 8054CA9C  4E 80 00 20 */	blr 
