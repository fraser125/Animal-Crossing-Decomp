lbl_805BA7E0:
/* 805BA7E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BA7E4  7C 08 02 A6 */	mflr r0
/* 805BA7E8  38 60 11 24 */	li r3, 0x1124
/* 805BA7EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BA7F0  4B DD DD 25 */	bl mDemo_Set_msg_num
/* 805BA7F4  38 60 00 01 */	li r3, 1
/* 805BA7F8  4B DD E1 29 */	bl mDemo_Set_camera
/* 805BA7FC  38 60 00 00 */	li r3, 0
/* 805BA800  4B DD DF 29 */	bl mDemo_Set_talk_display_name
/* 805BA804  4B DD FB B1 */	bl mDemo_Set_ListenAble
/* 805BA808  38 60 00 CD */	li r3, 0xcd
/* 805BA80C  38 A0 00 50 */	li r5, 0x50
/* 805BA810  38 80 00 28 */	li r4, 0x28
/* 805BA814  38 00 00 FF */	li r0, 0xff
/* 805BA818  98 61 00 08 */	stb r3, 8(r1)
/* 805BA81C  38 61 00 08 */	addi r3, r1, 8
/* 805BA820  98 A1 00 09 */	stb r5, 9(r1)
/* 805BA824  98 81 00 0A */	stb r4, 0xa(r1)
/* 805BA828  98 01 00 0B */	stb r0, 0xb(r1)
/* 805BA82C  4B DD E0 A5 */	bl mDemo_Set_talk_window_color
/* 805BA830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BA834  7C 08 03 A6 */	mtlr r0
/* 805BA838  38 21 00 10 */	addi r1, r1, 0x10
/* 805BA83C  4E 80 00 20 */	blr 
