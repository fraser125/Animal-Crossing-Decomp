lbl_804A22E8:
/* 804A22E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804A22EC  7C 08 02 A6 */	mflr r0
/* 804A22F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A22F4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804A22F8  7C BF 2B 78 */	mr r31, r5
/* 804A22FC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804A2300  7C 7E 1B 78 */	mr r30, r3
/* 804A2304  80 83 03 F8 */	lwz r4, 0x3f8(r3)
/* 804A2308  38 61 00 14 */	addi r3, r1, 0x14
/* 804A230C  80 1E 03 FC */	lwz r0, 0x3fc(r30)
/* 804A2310  90 81 00 14 */	stw r4, 0x14(r1)
/* 804A2314  90 01 00 18 */	stw r0, 0x18(r1)
/* 804A2318  80 1E 04 00 */	lwz r0, 0x400(r30)
/* 804A231C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804A2320  4B F0 51 11 */	bl mFI_GetUnitFG
/* 804A2324  A0 03 00 00 */	lhz r0, 0(r3)
/* 804A2328  28 00 09 00 */	cmplwi r0, 0x900
/* 804A232C  41 80 00 44 */	blt lbl_804A2370
/* 804A2330  28 00 09 20 */	cmplwi r0, 0x920
/* 804A2334  41 81 00 3C */	bgt lbl_804A2370
/* 804A2338  80 FE 03 F8 */	lwz r7, 0x3f8(r30)
/* 804A233C  38 1F 09 00 */	addi r0, r31, 0x900
/* 804A2340  80 DE 03 FC */	lwz r6, 0x3fc(r30)
/* 804A2344  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 804A2348  38 81 00 08 */	addi r4, r1, 8
/* 804A234C  38 A0 00 01 */	li r5, 1
/* 804A2350  90 E1 00 08 */	stw r7, 8(r1)
/* 804A2354  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804A2358  80 1E 04 00 */	lwz r0, 0x400(r30)
/* 804A235C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A2360  4B F0 54 D1 */	bl mFI_SetFG_common
/* 804A2364  38 9E 03 F8 */	addi r4, r30, 0x3f8
/* 804A2368  38 60 04 61 */	li r3, 0x461
/* 804A236C  48 18 BC 3D */	bl sAdo_OngenTrgStart
lbl_804A2370:
/* 804A2370  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A2374  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804A2378  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804A237C  7C 08 03 A6 */	mtlr r0
/* 804A2380  38 21 00 30 */	addi r1, r1, 0x30
/* 804A2384  4E 80 00 20 */	blr 
