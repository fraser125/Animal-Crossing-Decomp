lbl_803A22E4:
/* 803A22E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A22E8  7C 08 02 A6 */	mflr r0
/* 803A22EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A22F0  39 61 00 20 */	addi r11, r1, 0x20
/* 803A22F4  4B CF 8B DD */	bl func_8009AED0
/* 803A22F8  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 803A22FC  54 BF 06 3E */	clrlwi r31, r5, 0x18
/* 803A2300  38 A7 85 38 */	addi r5, r7, common_data@l /* 0x81138538@l */
/* 803A2304  54 9E 06 3E */	clrlwi r30, r4, 0x18
/* 803A2308  3D 45 00 02 */	addis r10, r5, 2
/* 803A230C  39 1F FF FF */	addi r8, r31, -1
/* 803A2310  7D 4B 53 78 */	mr r11, r10
/* 803A2314  39 3E FF FF */	addi r9, r30, -1
/* 803A2318  39 9F FF FD */	addi r12, r31, -3
/* 803A231C  3B A0 00 00 */	li r29, 0
/* 803A2320  39 4A 25 54 */	addi r10, r10, 0x2554
/* 803A2324  39 6B 27 54 */	addi r11, r11, 0x2754
/* 803A2328  48 00 00 C8 */	b lbl_803A23F0
lbl_803A232C:
/* 803A232C  38 1D FF FF */	addi r0, r29, -1
/* 803A2330  3B 80 00 00 */	li r28, 0
/* 803A2334  1C 00 0A 00 */	mulli r0, r0, 0xa00
/* 803A2338  7C E5 02 14 */	add r7, r5, r0
/* 803A233C  7F C9 03 A6 */	mtctr r30
/* 803A2340  2C 1E 00 00 */	cmpwi r30, 0
/* 803A2344  40 81 00 A8 */	ble lbl_803A23EC
lbl_803A2348:
/* 803A2348  2C 1D 00 00 */	cmpwi r29, 0
/* 803A234C  40 81 00 88 */	ble lbl_803A23D4
/* 803A2350  7C 1D 40 00 */	cmpw r29, r8
/* 803A2354  40 80 00 80 */	bge lbl_803A23D4
/* 803A2358  2C 1C 00 00 */	cmpwi r28, 0
/* 803A235C  40 81 00 78 */	ble lbl_803A23D4
/* 803A2360  7C 1C 48 00 */	cmpw r28, r9
/* 803A2364  40 80 00 70 */	bge lbl_803A23D4
/* 803A2368  80 06 00 00 */	lwz r0, 0(r6)
/* 803A236C  7C 1C 00 00 */	cmpw r28, r0
/* 803A2370  40 82 00 14 */	bne lbl_803A2384
/* 803A2374  2C 1D 00 08 */	cmpwi r29, 8
/* 803A2378  40 82 00 0C */	bne lbl_803A2384
/* 803A237C  91 43 05 84 */	stw r10, 0x584(r3)
/* 803A2380  48 00 00 60 */	b lbl_803A23E0
lbl_803A2384:
/* 803A2384  80 06 00 04 */	lwz r0, 4(r6)
/* 803A2388  7C 1C 00 00 */	cmpw r28, r0
/* 803A238C  40 82 00 14 */	bne lbl_803A23A0
/* 803A2390  2C 1D 00 08 */	cmpwi r29, 8
/* 803A2394  40 82 00 0C */	bne lbl_803A23A0
/* 803A2398  91 63 05 84 */	stw r11, 0x584(r3)
/* 803A239C  48 00 00 44 */	b lbl_803A23E0
lbl_803A23A0:
/* 803A23A0  7C 1D 60 00 */	cmpw r29, r12
/* 803A23A4  41 80 00 14 */	blt lbl_803A23B8
/* 803A23A8  3C 80 80 65 */	lis r4, data_80653520@ha /* 0x80653520@ha */
/* 803A23AC  38 04 35 20 */	addi r0, r4, data_80653520@l /* 0x80653520@l */
/* 803A23B0  90 03 05 84 */	stw r0, 0x584(r3)
/* 803A23B4  48 00 00 2C */	b lbl_803A23E0
lbl_803A23B8:
/* 803A23B8  38 1C FF FF */	addi r0, r28, -1
/* 803A23BC  54 04 48 2C */	slwi r4, r0, 9
/* 803A23C0  3C 84 00 01 */	addis r4, r4, 1
/* 803A23C4  38 84 37 A8 */	addi r4, r4, 0x37a8
/* 803A23C8  7C 07 22 14 */	add r0, r7, r4
/* 803A23CC  90 03 05 84 */	stw r0, 0x584(r3)
/* 803A23D0  48 00 00 10 */	b lbl_803A23E0
lbl_803A23D4:
/* 803A23D4  3C 80 80 65 */	lis r4, data_80653520@ha /* 0x80653520@ha */
/* 803A23D8  38 04 35 20 */	addi r0, r4, data_80653520@l /* 0x80653520@l */
/* 803A23DC  90 03 05 84 */	stw r0, 0x584(r3)
lbl_803A23E0:
/* 803A23E0  38 63 06 14 */	addi r3, r3, 0x614
/* 803A23E4  3B 9C 00 01 */	addi r28, r28, 1
/* 803A23E8  42 00 FF 60 */	bdnz lbl_803A2348
lbl_803A23EC:
/* 803A23EC  3B BD 00 01 */	addi r29, r29, 1
lbl_803A23F0:
/* 803A23F0  7C 1D F8 00 */	cmpw r29, r31
/* 803A23F4  41 80 FF 38 */	blt lbl_803A232C
/* 803A23F8  39 61 00 20 */	addi r11, r1, 0x20
/* 803A23FC  4B CF 8B 21 */	bl func_8009AF1C
/* 803A2400  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A2404  7C 08 03 A6 */	mtlr r0
/* 803A2408  38 21 00 20 */	addi r1, r1, 0x20
/* 803A240C  4E 80 00 20 */	blr 
