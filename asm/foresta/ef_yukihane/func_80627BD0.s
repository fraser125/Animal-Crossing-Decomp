lbl_80627BD0:
/* 80627BD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80627BD4  7C 08 02 A6 */	mflr r0
/* 80627BD8  7C E8 3B 78 */	mr r8, r7
/* 80627BDC  38 E0 00 00 */	li r7, 0
/* 80627BE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80627BE4  39 40 00 00 */	li r10, 0
/* 80627BE8  80 03 00 00 */	lwz r0, 0(r3)
/* 80627BEC  81 23 00 04 */	lwz r9, 4(r3)
/* 80627BF0  80 A3 00 08 */	lwz r5, 8(r3)
/* 80627BF4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80627BF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80627BFC  38 00 00 00 */	li r0, 0
/* 80627C00  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80627C04  91 21 00 14 */	stw r9, 0x14(r1)
/* 80627C08  3D 63 00 02 */	addis r11, r3, 2
/* 80627C0C  7C 89 23 78 */	mr r9, r4
/* 80627C10  38 81 00 10 */	addi r4, r1, 0x10
/* 80627C14  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80627C18  38 60 00 31 */	li r3, 0x31
/* 80627C1C  38 A0 00 00 */	li r5, 0
/* 80627C20  90 01 00 08 */	stw r0, 8(r1)
/* 80627C24  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 80627C28  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 80627C2C  7D 89 03 A6 */	mtctr r12
/* 80627C30  4E 80 04 21 */	bctrl 
/* 80627C34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80627C38  7C 08 03 A6 */	mtlr r0
/* 80627C3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80627C40  4E 80 00 20 */	blr 