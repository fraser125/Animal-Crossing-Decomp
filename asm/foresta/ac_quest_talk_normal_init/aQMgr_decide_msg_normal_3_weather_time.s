lbl_80493954:
/* 80493954  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80493958  7C 08 02 A6 */	mflr r0
/* 8049395C  3C A0 80 69 */	lis r5, l_normal3_weather_time@ha /* 0x8068B600@ha */
/* 80493960  38 C0 00 02 */	li r6, 2
/* 80493964  90 01 00 14 */	stw r0, 0x14(r1)
/* 80493968  54 80 10 3A */	slwi r0, r4, 2
/* 8049396C  38 85 B6 00 */	addi r4, r5, l_normal3_weather_time@l /* 0x8068B600@l */
/* 80493970  38 A0 00 06 */	li r5, 6
/* 80493974  7C 84 00 2E */	lwzx r4, r4, r0
/* 80493978  38 E0 00 02 */	li r7, 2
/* 8049397C  4B FF EE 45 */	bl aQMgr_get_msg_weather_time
/* 80493980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80493984  7C 08 03 A6 */	mtlr r0
/* 80493988  38 21 00 10 */	addi r1, r1, 0x10
/* 8049398C  4E 80 00 20 */	blr 
