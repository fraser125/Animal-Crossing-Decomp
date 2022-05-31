lbl_803B2FD4:
/* 803B2FD4  3C A0 80 65 */	lis r5, l_mHm_player_room_default_data@ha /* 0x806551D8@ha */
/* 803B2FD8  54 68 07 BE */	clrlwi r8, r3, 0x1e
/* 803B2FDC  54 66 26 B6 */	rlwinm r6, r3, 4, 0x1a, 0x1b
/* 803B2FE0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B2FE4  38 05 51 D8 */	addi r0, r5, l_mHm_player_room_default_data@l /* 0x806551D8@l */
/* 803B2FE8  38 60 30 F8 */	li r3, 0x30f8
/* 803B2FEC  7D 20 32 14 */	add r9, r0, r6
/* 803B2FF0  38 E4 85 38 */	addi r7, r4, common_data@l /* 0x81138538@l */
/* 803B2FF4  1D 48 26 B0 */	mulli r10, r8, 0x26b0
/* 803B2FF8  80 89 00 08 */	lwz r4, 8(r9)
/* 803B2FFC  3C A7 00 01 */	addis r5, r7, 1
/* 803B3000  80 09 00 04 */	lwz r0, 4(r9)
/* 803B3004  54 84 28 34 */	slwi r4, r4, 5
/* 803B3008  A1 09 00 0C */	lhz r8, 0xc(r9)
/* 803B300C  7C C5 52 14 */	add r6, r5, r10
/* 803B3010  54 00 08 3C */	slwi r0, r0, 1
/* 803B3014  7C A6 22 14 */	add r5, r6, r4
/* 803B3018  38 80 2B 00 */	li r4, 0x2b00
/* 803B301C  7C A5 02 14 */	add r5, r5, r0
/* 803B3020  38 00 00 03 */	li r0, 3
/* 803B3024  B1 05 9D 20 */	sth r8, -0x62e0(r5)
/* 803B3028  39 09 00 01 */	addi r8, r9, 1
/* 803B302C  7C E7 52 14 */	add r7, r7, r10
/* 803B3030  B0 66 9D 42 */	sth r3, -0x62be(r6)
/* 803B3034  38 60 00 00 */	li r3, 0
/* 803B3038  B0 86 9F 6A */	sth r4, -0x6096(r6)
/* 803B303C  7C 09 03 A6 */	mtctr r0
lbl_803B3040:
/* 803B3040  7C 87 1A 14 */	add r4, r7, r3
/* 803B3044  88 A8 00 00 */	lbz r5, 0(r8)
/* 803B3048  3C 84 00 01 */	addis r4, r4, 1
/* 803B304C  88 09 00 00 */	lbz r0, 0(r9)
/* 803B3050  98 A4 A5 C0 */	stb r5, -0x5a40(r4)
/* 803B3054  38 63 08 A8 */	addi r3, r3, 0x8a8
/* 803B3058  98 04 A5 C1 */	stb r0, -0x5a3f(r4)
/* 803B305C  42 00 FF E4 */	bdnz lbl_803B3040
/* 803B3060  4E 80 00 20 */	blr 
