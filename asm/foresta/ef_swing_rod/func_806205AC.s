lbl_806205AC:
/* 806205AC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806205B0  7C 08 02 A6 */	mflr r0
/* 806205B4  90 01 00 64 */	stw r0, 0x64(r1)
/* 806205B8  39 61 00 60 */	addi r11, r1, 0x60
/* 806205BC  4B A7 A9 01 */	bl func_8009AEBC
/* 806205C0  3D 40 81 14 */	lis r10, common_data@ha /* 0x81138538@ha */
/* 806205C4  7C 78 1B 78 */	mr r24, r3
/* 806205C8  38 6A 85 38 */	addi r3, r10, common_data@l /* 0x81138538@l */
/* 806205CC  7C 99 23 78 */	mr r25, r4
/* 806205D0  3F E3 00 02 */	addis r31, r3, 2
/* 806205D4  7C BA 2B 78 */	mr r26, r5
/* 806205D8  80 1F 60 9C */	lwz r0, 0x609c(r31)
/* 806205DC  7C DB 33 78 */	mr r27, r6
/* 806205E0  7C FC 3B 78 */	mr r28, r7
/* 806205E4  7D 1D 43 78 */	mr r29, r8
/* 806205E8  28 00 00 00 */	cmplwi r0, 0
/* 806205EC  7D 3E 4B 78 */	mr r30, r9
/* 806205F0  41 82 00 DC */	beq lbl_806206CC
/* 806205F4  7F A0 07 34 */	extsh r0, r29
/* 806205F8  2C 00 00 09 */	cmpwi r0, 9
/* 806205FC  41 82 00 08 */	beq lbl_80620604
/* 80620600  48 00 00 CC */	b lbl_806206CC
lbl_80620604:
/* 80620604  3A E0 00 02 */	li r23, 2
lbl_80620608:
/* 80620608  80 98 00 00 */	lwz r4, 0(r24)
/* 8062060C  7F 25 CB 78 */	mr r5, r25
/* 80620610  80 78 00 04 */	lwz r3, 4(r24)
/* 80620614  7F 46 D3 78 */	mr r6, r26
/* 80620618  80 18 00 08 */	lwz r0, 8(r24)
/* 8062061C  7F 67 DB 78 */	mr r7, r27
/* 80620620  90 81 00 28 */	stw r4, 0x28(r1)
/* 80620624  7F 88 E3 78 */	mr r8, r28
/* 80620628  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8062062C  7F A9 EB 78 */	mr r9, r29
/* 80620630  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80620634  38 81 00 28 */	addi r4, r1, 0x28
/* 80620638  38 60 00 33 */	li r3, 0x33
/* 8062063C  39 40 00 01 */	li r10, 1
/* 80620640  90 01 00 30 */	stw r0, 0x30(r1)
/* 80620644  81 8B 00 00 */	lwz r12, 0(r11)
/* 80620648  7D 89 03 A6 */	mtctr r12
/* 8062064C  4E 80 04 21 */	bctrl 
/* 80620650  2C 17 00 00 */	cmpwi r23, 0
/* 80620654  3A F7 FF FF */	addi r23, r23, -1
/* 80620658  40 82 FF B0 */	bne lbl_80620608
/* 8062065C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80620660  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80620664  3C 63 00 02 */	addis r3, r3, 2
/* 80620668  80 03 61 10 */	lwz r0, 0x6110(r3)
/* 8062066C  28 00 00 03 */	cmplwi r0, 3
/* 80620670  40 82 00 5C */	bne lbl_806206CC
/* 80620674  3A E0 00 02 */	li r23, 2
lbl_80620678:
/* 80620678  80 98 00 00 */	lwz r4, 0(r24)
/* 8062067C  7F 25 CB 78 */	mr r5, r25
/* 80620680  80 78 00 04 */	lwz r3, 4(r24)
/* 80620684  7F 46 D3 78 */	mr r6, r26
/* 80620688  80 18 00 08 */	lwz r0, 8(r24)
/* 8062068C  7F 67 DB 78 */	mr r7, r27
/* 80620690  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80620694  7F 88 E3 78 */	mr r8, r28
/* 80620698  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8062069C  7F A9 EB 78 */	mr r9, r29
/* 806206A0  90 61 00 20 */	stw r3, 0x20(r1)
/* 806206A4  38 81 00 1C */	addi r4, r1, 0x1c
/* 806206A8  38 60 00 34 */	li r3, 0x34
/* 806206AC  39 40 00 00 */	li r10, 0
/* 806206B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806206B4  81 8B 00 00 */	lwz r12, 0(r11)
/* 806206B8  7D 89 03 A6 */	mtctr r12
/* 806206BC  4E 80 04 21 */	bctrl 
/* 806206C0  2C 17 00 00 */	cmpwi r23, 0
/* 806206C4  3A F7 FF FF */	addi r23, r23, -1
/* 806206C8  40 82 FF B0 */	bne lbl_80620678
lbl_806206CC:
/* 806206CC  80 78 00 00 */	lwz r3, 0(r24)
/* 806206D0  7F 66 DB 78 */	mr r6, r27
/* 806206D4  80 B8 00 04 */	lwz r5, 4(r24)
/* 806206D8  7F 88 E3 78 */	mr r8, r28
/* 806206DC  80 18 00 08 */	lwz r0, 8(r24)
/* 806206E0  7F 29 CB 78 */	mr r9, r25
/* 806206E4  90 61 00 10 */	stw r3, 0x10(r1)
/* 806206E8  7F AA EB 78 */	mr r10, r29
/* 806206EC  38 81 00 10 */	addi r4, r1, 0x10
/* 806206F0  38 60 00 4E */	li r3, 0x4e
/* 806206F4  90 A1 00 14 */	stw r5, 0x14(r1)
/* 806206F8  38 A0 00 00 */	li r5, 0
/* 806206FC  38 E0 00 00 */	li r7, 0
/* 80620700  90 01 00 18 */	stw r0, 0x18(r1)
/* 80620704  93 C1 00 08 */	stw r30, 8(r1)
/* 80620708  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8062070C  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 80620710  7D 89 03 A6 */	mtctr r12
/* 80620714  4E 80 04 21 */	bctrl 
/* 80620718  39 61 00 60 */	addi r11, r1, 0x60
/* 8062071C  4B A7 A7 ED */	bl func_8009AF08
/* 80620720  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80620724  7C 08 03 A6 */	mtlr r0
/* 80620728  38 21 00 60 */	addi r1, r1, 0x60
/* 8062072C  4E 80 00 20 */	blr 
