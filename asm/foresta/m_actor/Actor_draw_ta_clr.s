lbl_803747E8:
/* 803747E8  80 03 00 20 */	lwz r0, 0x20(r3)
/* 803747EC  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 803747F0  4D 82 00 20 */	beqlr 
/* 803747F4  81 04 00 00 */	lwz r8, 0(r4)
/* 803747F8  3C E0 D5 02 */	lis r7, 0xd502
/* 803747FC  38 C0 00 00 */	li r6, 0
/* 80374800  3C A0 CE 00 */	lis r5, 0xce00
/* 80374804  80 68 02 D0 */	lwz r3, 0x2d0(r8)
/* 80374808  38 80 00 90 */	li r4, 0x90
/* 8037480C  38 03 00 08 */	addi r0, r3, 8
/* 80374810  90 08 02 D0 */	stw r0, 0x2d0(r8)
/* 80374814  90 E3 00 00 */	stw r7, 0(r3)
/* 80374818  90 C3 00 04 */	stw r6, 4(r3)
/* 8037481C  80 68 03 00 */	lwz r3, 0x300(r8)
/* 80374820  38 03 00 08 */	addi r0, r3, 8
/* 80374824  90 08 03 00 */	stw r0, 0x300(r8)
/* 80374828  90 E3 00 00 */	stw r7, 0(r3)
/* 8037482C  90 C3 00 04 */	stw r6, 4(r3)
/* 80374830  80 68 02 E0 */	lwz r3, 0x2e0(r8)
/* 80374834  38 03 00 08 */	addi r0, r3, 8
/* 80374838  90 08 02 E0 */	stw r0, 0x2e0(r8)
/* 8037483C  90 E3 00 00 */	stw r7, 0(r3)
/* 80374840  90 C3 00 04 */	stw r6, 4(r3)
/* 80374844  80 68 02 D0 */	lwz r3, 0x2d0(r8)
/* 80374848  38 03 00 08 */	addi r0, r3, 8
/* 8037484C  90 08 02 D0 */	stw r0, 0x2d0(r8)
/* 80374850  90 A3 00 00 */	stw r5, 0(r3)
/* 80374854  90 83 00 04 */	stw r4, 4(r3)
/* 80374858  80 68 03 00 */	lwz r3, 0x300(r8)
/* 8037485C  38 03 00 08 */	addi r0, r3, 8
/* 80374860  90 08 03 00 */	stw r0, 0x300(r8)
/* 80374864  90 A3 00 00 */	stw r5, 0(r3)
/* 80374868  90 83 00 04 */	stw r4, 4(r3)
/* 8037486C  80 68 02 E0 */	lwz r3, 0x2e0(r8)
/* 80374870  38 03 00 08 */	addi r0, r3, 8
/* 80374874  90 08 02 E0 */	stw r0, 0x2e0(r8)
/* 80374878  90 A3 00 00 */	stw r5, 0(r3)
/* 8037487C  90 83 00 04 */	stw r4, 4(r3)
/* 80374880  4E 80 00 20 */	blr 
