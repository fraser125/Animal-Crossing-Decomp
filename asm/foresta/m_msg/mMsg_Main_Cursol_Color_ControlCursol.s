lbl_803C30A8:
/* 803C30A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C30AC  7C 08 02 A6 */	mflr r0
/* 803C30B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C30B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C30B8  7C 9F 23 78 */	mr r31, r4
/* 803C30BC  93 C1 00 08 */	stw r30, 8(r1)
/* 803C30C0  7C 7E 1B 78 */	mr r30, r3
/* 803C30C4  80 03 02 E4 */	lwz r0, 0x2e4(r3)
/* 803C30C8  2C 00 00 00 */	cmpwi r0, 0
/* 803C30CC  41 80 00 1C */	blt lbl_803C30E8
/* 803C30D0  2C 00 00 04 */	cmpwi r0, 4
/* 803C30D4  40 80 00 14 */	bge lbl_803C30E8
/* 803C30D8  54 03 10 3A */	slwi r3, r0, 2
/* 803C30DC  38 A3 02 BC */	addi r5, r3, 0x2bc
/* 803C30E0  7C BE 2A 14 */	add r5, r30, r5
/* 803C30E4  48 00 00 08 */	b lbl_803C30EC
lbl_803C30E8:
/* 803C30E8  38 BE 02 BC */	addi r5, r30, 0x2bc
lbl_803C30EC:
/* 803C30EC  80 9F 00 00 */	lwz r4, 0(r31)
/* 803C30F0  7F C3 F3 78 */	mr r3, r30
/* 803C30F4  38 C5 00 01 */	addi r6, r5, 1
/* 803C30F8  38 E5 00 02 */	addi r7, r5, 2
/* 803C30FC  4B FF D1 F9 */	bl mMsg_Get_ColorCode
/* 803C3100  80 9F 00 00 */	lwz r4, 0(r31)
/* 803C3104  7F C3 F3 78 */	mr r3, r30
/* 803C3108  4B FF CF 41 */	bl func_803C0048
/* 803C310C  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C3110  7C 00 1A 14 */	add r0, r0, r3
/* 803C3114  38 60 00 00 */	li r3, 0
/* 803C3118  90 1F 00 00 */	stw r0, 0(r31)
/* 803C311C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C3120  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C3124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3128  7C 08 03 A6 */	mtlr r0
/* 803C312C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3130  4E 80 00 20 */	blr 
