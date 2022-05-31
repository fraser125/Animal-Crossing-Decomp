lbl_805B9950:
/* 805B9950  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B9954  7C 08 02 A6 */	mflr r0
/* 805B9958  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B995C  4B E1 FC E5 */	bl get_player_actor_withoutCheck
/* 805B9960  A8 03 00 36 */	lha r0, 0x36(r3)
/* 805B9964  38 A0 00 00 */	li r5, 0
/* 805B9968  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805B996C  28 00 40 00 */	cmplwi r0, 0x4000
/* 805B9970  40 81 00 24 */	ble lbl_805B9994
/* 805B9974  28 00 80 00 */	cmplwi r0, 0x8000
/* 805B9978  40 80 00 1C */	bge lbl_805B9994
/* 805B997C  3C 80 80 65 */	lis r4, lit_522@ha /* 0x8064AAB0@ha */
/* 805B9980  C0 23 00 74 */	lfs f1, 0x74(r3)
/* 805B9984  C0 04 AA B0 */	lfs f0, lit_522@l(r4)  /* 0x8064AAB0@l */
/* 805B9988  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B998C  40 81 00 08 */	ble lbl_805B9994
/* 805B9990  38 A0 00 01 */	li r5, 1
lbl_805B9994:
/* 805B9994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B9998  7C A3 2B 78 */	mr r3, r5
/* 805B999C  7C 08 03 A6 */	mtlr r0
/* 805B99A0  38 21 00 10 */	addi r1, r1, 0x10
/* 805B99A4  4E 80 00 20 */	blr 
