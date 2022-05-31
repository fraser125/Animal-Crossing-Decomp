lbl_805D2964:
/* 805D2964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D2968  7C 08 02 A6 */	mflr r0
/* 805D296C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D2970  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D2974  7C 7F 1B 78 */	mr r31, r3
/* 805D2978  88 03 06 DA */	lbz r0, 0x6da(r3)
/* 805D297C  7C 00 00 34 */	cntlzw r0, r0
/* 805D2980  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 805D2984  98 03 06 DA */	stb r0, 0x6da(r3)
/* 805D2988  88 03 06 DA */	lbz r0, 0x6da(r3)
/* 805D298C  28 00 00 00 */	cmplwi r0, 0
/* 805D2990  41 82 00 10 */	beq lbl_805D29A0
/* 805D2994  38 60 04 5B */	li r3, 0x45b
/* 805D2998  48 05 B3 6D */	bl sAdo_SysTrgStart
/* 805D299C  48 00 00 0C */	b lbl_805D29A8
lbl_805D29A0:
/* 805D29A0  38 60 04 5C */	li r3, 0x45c
/* 805D29A4  48 05 B3 61 */	bl sAdo_SysTrgStart
lbl_805D29A8:
/* 805D29A8  38 7F 02 20 */	addi r3, r31, 0x220
/* 805D29AC  38 9F 00 20 */	addi r4, r31, 0x20
/* 805D29B0  38 A0 02 00 */	li r5, 0x200
/* 805D29B4  4B A8 A6 69 */	bl func_8005D01C
/* 805D29B8  38 7F 04 20 */	addi r3, r31, 0x420
/* 805D29BC  38 9F 02 20 */	addi r4, r31, 0x220
/* 805D29C0  38 A0 02 00 */	li r5, 0x200
/* 805D29C4  4B A8 A6 59 */	bl func_8005D01C
/* 805D29C8  38 7F 00 20 */	addi r3, r31, 0x20
/* 805D29CC  38 9F 04 20 */	addi r4, r31, 0x420
/* 805D29D0  38 A0 02 00 */	li r5, 0x200
/* 805D29D4  4B A8 A6 49 */	bl func_8005D01C
/* 805D29D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D29DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D29E0  7C 08 03 A6 */	mtlr r0
/* 805D29E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805D29E8  4E 80 00 20 */	blr 
