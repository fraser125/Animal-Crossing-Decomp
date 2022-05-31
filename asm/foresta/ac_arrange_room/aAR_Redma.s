lbl_80411E24:
/* 80411E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80411E28  7C 08 02 A6 */	mflr r0
/* 80411E2C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80411E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80411E34  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80411E38  3C 63 00 02 */	addis r3, r3, 2
/* 80411E3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80411E40  80 63 60 C8 */	lwz r3, 0x60c8(r3)
/* 80411E44  83 E3 00 00 */	lwz r31, 0(r3)
/* 80411E48  28 1F 00 00 */	cmplwi r31, 0
/* 80411E4C  41 82 00 1C */	beq lbl_80411E68
/* 80411E50  80 7F 01 78 */	lwz r3, 0x178(r31)
/* 80411E54  80 9F 01 7C */	lwz r4, 0x17c(r31)
/* 80411E58  4B FD 4C 99 */	bl mRmTp_CopyWallData
/* 80411E5C  80 7F 01 80 */	lwz r3, 0x180(r31)
/* 80411E60  80 9F 01 84 */	lwz r4, 0x184(r31)
/* 80411E64  4B FD 4D F5 */	bl mRmTp_CopyFloorData
lbl_80411E68:
/* 80411E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80411E6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80411E70  7C 08 03 A6 */	mtlr r0
/* 80411E74  38 21 00 10 */	addi r1, r1, 0x10
/* 80411E78  4E 80 00 20 */	blr 
