lbl_803EE16C:
/* 803EE16C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EE170  7C 08 02 A6 */	mflr r0
/* 803EE174  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE178  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EE17C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE180  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EE184  3F E3 00 01 */	addis r31, r3, 1
/* 803EE188  37 FF 4F A8 */	addic. r31, r31, 0x4fa8
/* 803EE18C  41 82 00 24 */	beq lbl_803EE1B0
/* 803EE190  38 7F 00 0E */	addi r3, r31, 0xe
/* 803EE194  4B FF FE C5 */	bl mSDI_PullTreeUT
/* 803EE198  38 7F 00 10 */	addi r3, r31, 0x10
/* 803EE19C  4B FF FE BD */	bl mSDI_PullTreeUT
/* 803EE1A0  38 7F 00 2E */	addi r3, r31, 0x2e
/* 803EE1A4  4B FF FE B5 */	bl mSDI_PullTreeUT
/* 803EE1A8  38 7F 00 30 */	addi r3, r31, 0x30
/* 803EE1AC  4B FF FE AD */	bl mSDI_PullTreeUT
lbl_803EE1B0:
/* 803EE1B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EE1B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EE1B8  7C 08 03 A6 */	mtlr r0
/* 803EE1BC  38 21 00 10 */	addi r1, r1, 0x10
/* 803EE1C0  4E 80 00 20 */	blr 
