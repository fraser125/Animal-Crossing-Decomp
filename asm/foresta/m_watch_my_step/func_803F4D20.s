lbl_803F4D20:
/* 803F4D20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F4D24  7C 08 02 A6 */	mflr r0
/* 803F4D28  3C 60 81 17 */	lis r3, data_81171558@ha /* 0x81171558@ha */
/* 803F4D2C  38 80 00 30 */	li r4, 0x30
/* 803F4D30  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F4D34  38 63 15 58 */	addi r3, r3, data_81171558@l /* 0x81171558@l */
/* 803F4D38  4B C6 83 31 */	bl bzero
/* 803F4D3C  3C 60 81 17 */	lis r3, data_81171558@ha /* 0x81171558@ha */
/* 803F4D40  38 00 00 00 */	li r0, 0
/* 803F4D44  38 63 15 58 */	addi r3, r3, data_81171558@l /* 0x81171558@l */
/* 803F4D48  B0 03 00 1A */	sth r0, 0x1a(r3)
/* 803F4D4C  48 00 0A C9 */	bl navigate_camera_ct
/* 803F4D50  48 00 10 15 */	bl mWt_mybell_confirmation_ct
/* 803F4D54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F4D58  7C 08 03 A6 */	mtlr r0
/* 803F4D5C  38 21 00 10 */	addi r1, r1, 0x10
/* 803F4D60  4E 80 00 20 */	blr 
