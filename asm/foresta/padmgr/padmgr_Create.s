lbl_804087A0:
/* 804087A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804087A4  7C 08 02 A6 */	mflr r0
/* 804087A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804087AC  39 61 00 20 */	addi r11, r1, 0x20
/* 804087B0  4B C9 27 21 */	bl func_8009AED0
/* 804087B4  7C 9C 23 78 */	mr r28, r4
/* 804087B8  7C BD 2B 78 */	mr r29, r5
/* 804087BC  7C DE 33 78 */	mr r30, r6
/* 804087C0  7C FF 3B 78 */	mr r31, r7
/* 804087C4  4B FF FF 2D */	bl padmgr_Init
/* 804087C8  3C 60 80 66 */	lis r3, data_8065F038@ha /* 0x8065F038@ha */
/* 804087CC  38 A0 00 08 */	li r5, 8
/* 804087D0  80 83 F0 38 */	lwz r4, data_8065F038@l(r3)  /* 0x8065F038@l */
/* 804087D4  38 64 00 8C */	addi r3, r4, 0x8c
/* 804087D8  38 84 00 2C */	addi r4, r4, 0x2c
/* 804087DC  4B C5 77 99 */	bl osCreateMesgQueue
/* 804087E0  3C 80 80 66 */	lis r4, data_8065F038@ha /* 0x8065F038@ha */
/* 804087E4  3C 60 80 41 */	lis r3, padmgr_MainProc@ha /* 0x80408668@ha */
/* 804087E8  38 A4 F0 38 */	addi r5, r4, data_8065F038@l /* 0x8065F038@l */
/* 804087EC  7F C7 F3 78 */	mr r7, r30
/* 804087F0  80 C5 00 00 */	lwz r6, 0(r5)
/* 804087F4  38 A3 86 68 */	addi r5, r3, padmgr_MainProc@l /* 0x80408668@l */
/* 804087F8  7F 84 E3 78 */	mr r4, r28
/* 804087FC  7F E8 FB 78 */	mr r8, r31
/* 80408800  7F A9 EB 78 */	mr r9, r29
/* 80408804  38 66 00 B8 */	addi r3, r6, 0xb8
/* 80408808  4B C5 77 8D */	bl func_8005FF94
/* 8040880C  3C 60 80 66 */	lis r3, data_8065F038@ha /* 0x8065F038@ha */
/* 80408810  38 63 F0 38 */	addi r3, r3, data_8065F038@l /* 0x8065F038@l */
/* 80408814  80 63 00 00 */	lwz r3, 0(r3)
/* 80408818  38 63 00 B8 */	addi r3, r3, 0xb8
/* 8040881C  4B C5 7C C1 */	bl osStartThread
/* 80408820  39 61 00 20 */	addi r11, r1, 0x20
/* 80408824  4B C9 26 F9 */	bl func_8009AF1C
/* 80408828  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8040882C  7C 08 03 A6 */	mtlr r0
/* 80408830  38 21 00 20 */	addi r1, r1, 0x20
/* 80408834  4E 80 00 20 */	blr 
