lbl_803B2A34:
/* 803B2A34  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803B2A38  7C 08 02 A6 */	mflr r0
/* 803B2A3C  3C 80 81 17 */	lis r4, ram_764@ha /* 0x81168198@ha */
/* 803B2A40  90 01 00 64 */	stw r0, 0x64(r1)
/* 803B2A44  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 803B2A48  7C 7F 1B 78 */	mr r31, r3
/* 803B2A4C  38 64 81 98 */	addi r3, r4, ram_764@l /* 0x81168198@l */
/* 803B2A50  38 80 00 5A */	li r4, 0x5a
/* 803B2A54  4B CA A6 15 */	bl bzero
/* 803B2A58  38 00 00 00 */	li r0, 0
/* 803B2A5C  3C 60 81 17 */	lis r3, ram_764@ha /* 0x81168198@ha */
/* 803B2A60  90 01 00 0C */	stw r0, 0xc(r1)
/* 803B2A64  38 83 81 98 */	addi r4, r3, ram_764@l /* 0x81168198@l */
/* 803B2A68  38 00 00 5A */	li r0, 0x5a
/* 803B2A6C  38 61 00 0C */	addi r3, r1, 0xc
/* 803B2A70  80 BF 00 18 */	lwz r5, 0x18(r31)
/* 803B2A74  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803B2A78  90 81 00 14 */	stw r4, 0x14(r1)
/* 803B2A7C  90 01 00 18 */	stw r0, 0x18(r1)
/* 803B2A80  4B FF FE FD */	bl mHandbillzDMA_body_load
/* 803B2A84  2C 03 00 00 */	cmpwi r3, 0
/* 803B2A88  41 82 00 8C */	beq lbl_803B2B14
/* 803B2A8C  38 61 00 24 */	addi r3, r1, 0x24
/* 803B2A90  38 80 00 2B */	li r4, 0x2b
/* 803B2A94  38 A0 00 20 */	li r5, 0x20
/* 803B2A98  48 00 7F B1 */	bl mem_clear
/* 803B2A9C  3C 60 81 17 */	lis r3, ram_764@ha /* 0x81168198@ha */
/* 803B2AA0  80 E1 00 20 */	lwz r7, 0x20(r1)
/* 803B2AA4  38 C3 81 98 */	addi r6, r3, ram_764@l /* 0x81168198@l */
/* 803B2AA8  38 A1 00 08 */	addi r5, r1, 8
/* 803B2AAC  38 61 00 24 */	addi r3, r1, 0x24
/* 803B2AB0  38 80 00 2B */	li r4, 0x2b
/* 803B2AB4  4B FF F8 95 */	bl mHandbill_CheckSuperStringBorderAndCopy
/* 803B2AB8  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 803B2ABC  38 61 00 24 */	addi r3, r1, 0x24
/* 803B2AC0  38 C1 00 08 */	addi r6, r1, 8
/* 803B2AC4  38 80 00 2B */	li r4, 0x2b
/* 803B2AC8  38 A5 FF FF */	addi r5, r5, -1
/* 803B2ACC  38 E0 00 02 */	li r7, 2
/* 803B2AD0  4B FF F6 F9 */	bl mHandbill_Change_ControlCode2
/* 803B2AD4  80 7F 00 00 */	lwz r3, 0(r31)
/* 803B2AD8  38 A0 00 20 */	li r5, 0x20
/* 803B2ADC  80 9F 00 04 */	lwz r4, 4(r31)
/* 803B2AE0  48 00 7F 69 */	bl mem_clear
/* 803B2AE4  80 1F 00 04 */	lwz r0, 4(r31)
/* 803B2AE8  38 A0 00 2B */	li r5, 0x2b
/* 803B2AEC  28 00 00 2B */	cmplwi r0, 0x2b
/* 803B2AF0  40 80 00 08 */	bge lbl_803B2AF8
/* 803B2AF4  7C 05 03 78 */	mr r5, r0
lbl_803B2AF8:
/* 803B2AF8  80 9F 00 00 */	lwz r4, 0(r31)
/* 803B2AFC  38 61 00 24 */	addi r3, r1, 0x24
/* 803B2B00  4B CA A5 1D */	bl func_8005D01C
/* 803B2B04  80 01 00 08 */	lwz r0, 8(r1)
/* 803B2B08  38 60 00 01 */	li r3, 1
/* 803B2B0C  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 803B2B10  48 00 00 08 */	b lbl_803B2B18
lbl_803B2B14:
/* 803B2B14  38 60 00 00 */	li r3, 0
lbl_803B2B18:
/* 803B2B18  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803B2B1C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 803B2B20  7C 08 03 A6 */	mtlr r0
/* 803B2B24  38 21 00 60 */	addi r1, r1, 0x60
/* 803B2B28  4E 80 00 20 */	blr 
