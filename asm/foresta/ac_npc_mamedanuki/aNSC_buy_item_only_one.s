lbl_8055C114:
/* 8055C114  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8055C118  7C 08 02 A6 */	mflr r0
/* 8055C11C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8055C120  39 61 00 30 */	addi r11, r1, 0x30
/* 8055C124  4B B3 ED 9D */	bl func_8009AEC0
/* 8055C128  7C 7C 1B 78 */	mr r28, r3
/* 8055C12C  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 8055C130  80 FC 00 00 */	lwz r7, 0(r28)
/* 8055C134  38 03 86 9F */	addi r0, r3, 0x869F /* 0x0001869F@l */
/* 8055C138  7C DD 33 78 */	mr r29, r6
/* 8055C13C  3B C0 00 01 */	li r30, 1
/* 8055C140  7C 07 00 40 */	cmplw r7, r0
/* 8055C144  41 80 00 10 */	blt lbl_8055C154
/* 8055C148  38 07 8A D0 */	addi r0, r7, -30000
/* 8055C14C  3B C0 00 00 */	li r30, 0
/* 8055C150  90 1C 00 00 */	stw r0, 0(r28)
lbl_8055C154:
/* 8055C154  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 8055C158  28 03 20 00 */	cmplwi r3, 0x2000
/* 8055C15C  41 80 01 40 */	blt lbl_8055C29C
/* 8055C160  28 03 20 FF */	cmplwi r3, 0x20ff
/* 8055C164  41 81 01 38 */	bgt lbl_8055C29C
/* 8055C168  38 63 E0 00 */	addi r3, r3, -8192
/* 8055C16C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055C170  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8055C174  3B 40 00 01 */	li r26, 1
/* 8055C178  3F E4 00 02 */	addis r31, r4, 2
/* 8055C17C  54 60 D0 0A */	slwi r0, r3, 0x1a
/* 8055C180  54 63 0F FE */	srwi r3, r3, 0x1f
/* 8055C184  83 7F 61 3C */	lwz r27, 0x613c(r31)
/* 8055C188  7C 03 00 50 */	subf r0, r3, r0
/* 8055C18C  54 00 30 3E */	rotlwi r0, r0, 6
/* 8055C190  7F 20 1A 14 */	add r25, r0, r3
lbl_8055C194:
/* 8055C194  38 1A FF FF */	addi r0, r26, -1
/* 8055C198  7F 63 DB 78 */	mr r3, r27
/* 8055C19C  54 00 30 32 */	slwi r0, r0, 6
/* 8055C1A0  7C 99 02 14 */	add r4, r25, r0
/* 8055C1A4  38 04 20 00 */	addi r0, r4, 0x2000
/* 8055C1A8  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8055C1AC  4B E8 45 7D */	bl mPr_GetPossessionItemIdx
/* 8055C1B0  7C 78 1B 78 */	mr r24, r3
/* 8055C1B4  2C 18 FF FF */	cmpwi r24, -1
/* 8055C1B8  41 82 00 D4 */	beq lbl_8055C28C
/* 8055C1BC  2C 1A 00 01 */	cmpwi r26, 1
/* 8055C1C0  40 82 00 28 */	bne lbl_8055C1E8
/* 8055C1C4  3C 60 80 6B */	lis r3, aNSC_exchange_itemNo@ha /* 0x806A9E30@ha */
/* 8055C1C8  57 C0 08 3C */	slwi r0, r30, 1
/* 8055C1CC  38 83 9E 30 */	addi r4, r3, aNSC_exchange_itemNo@l /* 0x806A9E30@l */
/* 8055C1D0  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 8055C1D4  7C A4 02 2E */	lhzx r5, r4, r0
/* 8055C1D8  7F 04 C3 78 */	mr r4, r24
/* 8055C1DC  38 C0 00 00 */	li r6, 0
/* 8055C1E0  4B E8 4C 49 */	bl mPr_SetPossessionItem
/* 8055C1E4  48 00 00 E4 */	b lbl_8055C2C8
lbl_8055C1E8:
/* 8055C1E8  2C 1E 00 00 */	cmpwi r30, 0
/* 8055C1EC  40 82 00 78 */	bne lbl_8055C264
/* 8055C1F0  7F 63 DB 78 */	mr r3, r27
/* 8055C1F4  38 80 00 00 */	li r4, 0
/* 8055C1F8  4B E8 45 31 */	bl mPr_GetPossessionItemIdx
/* 8055C1FC  7C 7B 1B 78 */	mr r27, r3
/* 8055C200  2C 1B FF FF */	cmpwi r27, -1
/* 8055C204  41 82 00 40 */	beq lbl_8055C244
/* 8055C208  38 1A FF FE */	addi r0, r26, -2
/* 8055C20C  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 8055C210  54 00 30 32 */	slwi r0, r0, 6
/* 8055C214  7F 04 C3 78 */	mr r4, r24
/* 8055C218  7C B9 02 14 */	add r5, r25, r0
/* 8055C21C  38 C0 00 00 */	li r6, 0
/* 8055C220  38 05 20 00 */	addi r0, r5, 0x2000
/* 8055C224  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 8055C228  4B E8 4C 01 */	bl mPr_SetPossessionItem
/* 8055C22C  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 8055C230  7F 64 DB 78 */	mr r4, r27
/* 8055C234  38 A0 21 02 */	li r5, 0x2102
/* 8055C238  38 C0 00 00 */	li r6, 0
/* 8055C23C  4B E8 4B ED */	bl mPr_SetPossessionItem
/* 8055C240  48 00 00 88 */	b lbl_8055C2C8
lbl_8055C244:
/* 8055C244  80 7C 00 00 */	lwz r3, 0(r28)
/* 8055C248  3B C0 00 03 */	li r30, 3
/* 8055C24C  38 03 75 30 */	addi r0, r3, 0x7530
/* 8055C250  90 1C 00 00 */	stw r0, 0(r28)
/* 8055C254  80 1C 00 00 */	lwz r0, 0(r28)
/* 8055C258  7C 1D 00 50 */	subf r0, r29, r0
/* 8055C25C  90 1C 00 00 */	stw r0, 0(r28)
/* 8055C260  48 00 00 68 */	b lbl_8055C2C8
lbl_8055C264:
/* 8055C264  38 1A FF FE */	addi r0, r26, -2
/* 8055C268  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 8055C26C  54 00 30 32 */	slwi r0, r0, 6
/* 8055C270  7F 04 C3 78 */	mr r4, r24
/* 8055C274  7C B9 02 14 */	add r5, r25, r0
/* 8055C278  38 C0 00 00 */	li r6, 0
/* 8055C27C  38 05 20 00 */	addi r0, r5, 0x2000
/* 8055C280  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 8055C284  4B E8 4B A5 */	bl mPr_SetPossessionItem
/* 8055C288  48 00 00 40 */	b lbl_8055C2C8
lbl_8055C28C:
/* 8055C28C  3B 5A 00 01 */	addi r26, r26, 1
/* 8055C290  2C 1A 00 04 */	cmpwi r26, 4
/* 8055C294  40 81 FF 00 */	ble lbl_8055C194
/* 8055C298  48 00 00 30 */	b lbl_8055C2C8
lbl_8055C29C:
/* 8055C29C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055C2A0  3C 60 80 6B */	lis r3, aNSC_exchange_itemNo@ha /* 0x806A9E30@ha */
/* 8055C2A4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8055C2A8  57 C0 08 3C */	slwi r0, r30, 1
/* 8055C2AC  3D 04 00 02 */	addis r8, r4, 2
/* 8055C2B0  38 E3 9E 30 */	addi r7, r3, aNSC_exchange_itemNo@l /* 0x806A9E30@l */
/* 8055C2B4  88 85 00 02 */	lbz r4, 2(r5)
/* 8055C2B8  38 C0 00 00 */	li r6, 0
/* 8055C2BC  80 68 61 3C */	lwz r3, 0x613c(r8)
/* 8055C2C0  7C A7 02 2E */	lhzx r5, r7, r0
/* 8055C2C4  4B E8 4B 65 */	bl mPr_SetPossessionItem
lbl_8055C2C8:
/* 8055C2C8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055C2CC  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 8055C2D0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8055C2D4  3F E4 00 02 */	addis r31, r4, 2
/* 8055C2D8  3B A3 86 9F */	addi r29, r3, 0x869F /* 0x0001869F@l */
/* 8055C2DC  48 00 00 20 */	b lbl_8055C2FC
lbl_8055C2E0:
/* 8055C2E0  80 7C 00 00 */	lwz r3, 0(r28)
/* 8055C2E4  38 80 21 02 */	li r4, 0x2102
/* 8055C2E8  38 A0 00 00 */	li r5, 0
/* 8055C2EC  38 03 8A D0 */	addi r0, r3, -30000
/* 8055C2F0  90 1C 00 00 */	stw r0, 0(r28)
/* 8055C2F4  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 8055C2F8  4B E8 4C 11 */	bl mPr_SetFreePossessionItem
lbl_8055C2FC:
/* 8055C2FC  80 1C 00 00 */	lwz r0, 0(r28)
/* 8055C300  7C 00 E8 40 */	cmplw r0, r29
/* 8055C304  40 80 FF DC */	bge lbl_8055C2E0
/* 8055C308  7F C3 F3 78 */	mr r3, r30
/* 8055C30C  39 61 00 30 */	addi r11, r1, 0x30
/* 8055C310  4B B3 EB FD */	bl func_8009AF0C
/* 8055C314  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8055C318  7C 08 03 A6 */	mtlr r0
/* 8055C31C  38 21 00 30 */	addi r1, r1, 0x30
/* 8055C320  4E 80 00 20 */	blr 
