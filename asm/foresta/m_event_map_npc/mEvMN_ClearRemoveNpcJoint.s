lbl_8039F9D4:
/* 8039F9D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039F9D8  7C 08 02 A6 */	mflr r0
/* 8039F9DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039F9E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8039F9E4  4B CF B4 E9 */	bl func_8009AECC
/* 8039F9E8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8039F9EC  7C 7B 1B 78 */	mr r27, r3
/* 8039F9F0  7C 9C 23 78 */	mr r28, r4
/* 8039F9F4  3B A0 00 00 */	li r29, 0
/* 8039F9F8  3B C5 85 38 */	addi r30, r5, common_data@l /* 0x81138538@l */
/* 8039F9FC  3B E0 00 FF */	li r31, 0xff
/* 8039FA00  48 00 00 40 */	b lbl_8039FA40
lbl_8039FA04:
/* 8039FA04  88 1B 00 00 */	lbz r0, 0(r27)
/* 8039FA08  28 00 00 FF */	cmplwi r0, 0xff
/* 8039FA0C  41 82 00 2C */	beq lbl_8039FA38
/* 8039FA10  28 00 00 0F */	cmplwi r0, 0xf
/* 8039FA14  40 80 00 24 */	bge lbl_8039FA38
/* 8039FA18  1C 00 09 88 */	mulli r0, r0, 0x988
/* 8039FA1C  7C 7E 02 14 */	add r3, r30, r0
/* 8039FA20  3C 63 00 01 */	addis r3, r3, 1
/* 8039FA24  38 63 74 38 */	addi r3, r3, 0x7438
/* 8039FA28  48 02 CB 95 */	bl mNpc_CheckFreeAnimalInfo
/* 8039FA2C  2C 03 00 01 */	cmpwi r3, 1
/* 8039FA30  40 82 00 08 */	bne lbl_8039FA38
/* 8039FA34  9B FB 00 00 */	stb r31, 0(r27)
lbl_8039FA38:
/* 8039FA38  3B 7B 00 01 */	addi r27, r27, 1
/* 8039FA3C  3B BD 00 01 */	addi r29, r29, 1
lbl_8039FA40:
/* 8039FA40  7C 1D E0 00 */	cmpw r29, r28
/* 8039FA44  41 80 FF C0 */	blt lbl_8039FA04
/* 8039FA48  39 61 00 20 */	addi r11, r1, 0x20
/* 8039FA4C  4B CF B4 CD */	bl func_8009AF18
/* 8039FA50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039FA54  7C 08 03 A6 */	mtlr r0
/* 8039FA58  38 21 00 20 */	addi r1, r1, 0x20
/* 8039FA5C  4E 80 00 20 */	blr 
