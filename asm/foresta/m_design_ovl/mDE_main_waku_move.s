lbl_805D32A8:
/* 805D32A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D32AC  7C 08 02 A6 */	mflr r0
/* 805D32B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D32B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D32B8  7C 7F 1B 78 */	mr r31, r3
/* 805D32BC  88 03 06 A2 */	lbz r0, 0x6a2(r3)
/* 805D32C0  28 00 00 04 */	cmplwi r0, 4
/* 805D32C4  40 82 00 10 */	bne lbl_805D32D4
/* 805D32C8  38 00 00 09 */	li r0, 9
/* 805D32CC  98 1F 06 99 */	stb r0, 0x699(r31)
/* 805D32D0  48 00 00 0C */	b lbl_805D32DC
lbl_805D32D4:
/* 805D32D4  38 00 00 02 */	li r0, 2
/* 805D32D8  98 1F 06 99 */	stb r0, 0x699(r31)
lbl_805D32DC:
/* 805D32DC  88 1F 06 9A */	lbz r0, 0x69a(r31)
/* 805D32E0  28 00 00 00 */	cmplwi r0, 0
/* 805D32E4  41 82 00 4C */	beq lbl_805D3330
/* 805D32E8  7F E3 FB 78 */	mr r3, r31
/* 805D32EC  4B FF FA A1 */	bl mDE_waku_set_start
/* 805D32F0  80 7F 06 68 */	lwz r3, 0x668(r31)
/* 805D32F4  80 1F 06 78 */	lwz r0, 0x678(r31)
/* 805D32F8  7C 03 00 51 */	subf. r0, r3, r0
/* 805D32FC  7C 60 00 D0 */	neg r3, r0
/* 805D3300  41 80 00 08 */	blt lbl_805D3308
/* 805D3304  7C 03 03 78 */	mr r3, r0
lbl_805D3308:
/* 805D3308  38 03 00 01 */	addi r0, r3, 1
/* 805D330C  90 1F 06 88 */	stw r0, 0x688(r31)
/* 805D3310  80 7F 06 6C */	lwz r3, 0x66c(r31)
/* 805D3314  80 1F 06 7C */	lwz r0, 0x67c(r31)
/* 805D3318  7C 03 00 51 */	subf. r0, r3, r0
/* 805D331C  7C 60 00 D0 */	neg r3, r0
/* 805D3320  41 80 00 08 */	blt lbl_805D3328
/* 805D3324  7C 03 03 78 */	mr r3, r0
lbl_805D3328:
/* 805D3328  38 03 00 01 */	addi r0, r3, 1
/* 805D332C  90 1F 06 8C */	stw r0, 0x68c(r31)
lbl_805D3330:
/* 805D3330  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 805D3334  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 805D3338  4B DC 2B D9 */	bl chkTrigger
/* 805D333C  2C 03 00 00 */	cmpwi r3, 0
/* 805D3340  41 82 01 44 */	beq lbl_805D3484
/* 805D3344  88 1F 06 9A */	lbz r0, 0x69a(r31)
/* 805D3348  28 00 00 00 */	cmplwi r0, 0
/* 805D334C  40 82 00 4C */	bne lbl_805D3398
/* 805D3350  80 1F 06 50 */	lwz r0, 0x650(r31)
/* 805D3354  38 60 04 54 */	li r3, 0x454
/* 805D3358  90 1F 06 58 */	stw r0, 0x658(r31)
/* 805D335C  80 1F 06 54 */	lwz r0, 0x654(r31)
/* 805D3360  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 805D3364  80 1F 06 68 */	lwz r0, 0x668(r31)
/* 805D3368  90 1F 06 78 */	stw r0, 0x678(r31)
/* 805D336C  80 1F 06 6C */	lwz r0, 0x66c(r31)
/* 805D3370  90 1F 06 7C */	stw r0, 0x67c(r31)
/* 805D3374  48 05 A9 91 */	bl sAdo_SysTrgStart
/* 805D3378  38 60 00 01 */	li r3, 1
/* 805D337C  38 00 00 00 */	li r0, 0
/* 805D3380  98 7F 06 98 */	stb r3, 0x698(r31)
/* 805D3384  90 1F 06 80 */	stw r0, 0x680(r31)
/* 805D3388  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D338C  90 1F 06 88 */	stw r0, 0x688(r31)
/* 805D3390  90 1F 06 8C */	stw r0, 0x68c(r31)
/* 805D3394  48 00 00 E0 */	b lbl_805D3474
lbl_805D3398:
/* 805D3398  7F E3 FB 78 */	mr r3, r31
/* 805D339C  4B FF F5 99 */	bl mDE_set_undo_texture
/* 805D33A0  38 00 00 00 */	li r0, 0
/* 805D33A4  98 1F 06 D8 */	stb r0, 0x6d8(r31)
/* 805D33A8  98 1F 06 D9 */	stb r0, 0x6d9(r31)
/* 805D33AC  88 1F 06 A2 */	lbz r0, 0x6a2(r31)
/* 805D33B0  2C 00 00 02 */	cmpwi r0, 2
/* 805D33B4  41 82 00 40 */	beq lbl_805D33F4
/* 805D33B8  40 80 00 14 */	bge lbl_805D33CC
/* 805D33BC  2C 00 00 00 */	cmpwi r0, 0
/* 805D33C0  41 82 00 1C */	beq lbl_805D33DC
/* 805D33C4  40 80 00 48 */	bge lbl_805D340C
/* 805D33C8  48 00 00 94 */	b lbl_805D345C
lbl_805D33CC:
/* 805D33CC  2C 00 00 04 */	cmpwi r0, 4
/* 805D33D0  41 82 00 6C */	beq lbl_805D343C
/* 805D33D4  40 80 00 88 */	bge lbl_805D345C
/* 805D33D8  48 00 00 4C */	b lbl_805D3424
lbl_805D33DC:
/* 805D33DC  7F E3 FB 78 */	mr r3, r31
/* 805D33E0  38 80 00 00 */	li r4, 0
/* 805D33E4  4B FF FD 8D */	bl mDE_waku_square_write
/* 805D33E8  38 60 04 55 */	li r3, 0x455
/* 805D33EC  48 05 A9 19 */	bl sAdo_SysTrgStart
/* 805D33F0  48 00 00 6C */	b lbl_805D345C
lbl_805D33F4:
/* 805D33F4  7F E3 FB 78 */	mr r3, r31
/* 805D33F8  38 80 00 01 */	li r4, 1
/* 805D33FC  4B FF FD 75 */	bl mDE_waku_square_write
/* 805D3400  38 60 04 55 */	li r3, 0x455
/* 805D3404  48 05 A9 01 */	bl sAdo_SysTrgStart
/* 805D3408  48 00 00 54 */	b lbl_805D345C
lbl_805D340C:
/* 805D340C  7F E3 FB 78 */	mr r3, r31
/* 805D3410  38 80 00 00 */	li r4, 0
/* 805D3414  4B FF FB 2D */	bl mDE_waku_circle_write
/* 805D3418  38 60 04 55 */	li r3, 0x455
/* 805D341C  48 05 A8 E9 */	bl sAdo_SysTrgStart
/* 805D3420  48 00 00 3C */	b lbl_805D345C
lbl_805D3424:
/* 805D3424  7F E3 FB 78 */	mr r3, r31
/* 805D3428  38 80 00 01 */	li r4, 1
/* 805D342C  4B FF FB 15 */	bl mDE_waku_circle_write
/* 805D3430  38 60 04 55 */	li r3, 0x455
/* 805D3434  48 05 A8 D1 */	bl sAdo_SysTrgStart
/* 805D3438  48 00 00 24 */	b lbl_805D345C
lbl_805D343C:
/* 805D343C  80 9F 06 68 */	lwz r4, 0x668(r31)
/* 805D3440  7F E3 FB 78 */	mr r3, r31
/* 805D3444  80 BF 06 6C */	lwz r5, 0x66c(r31)
/* 805D3448  80 DF 06 78 */	lwz r6, 0x678(r31)
/* 805D344C  80 FF 06 7C */	lwz r7, 0x67c(r31)
/* 805D3450  4B FF F9 E5 */	bl mDE_waku_line
/* 805D3454  38 60 04 55 */	li r3, 0x455
/* 805D3458  48 05 A8 AD */	bl sAdo_SysTrgStart
lbl_805D345C:
/* 805D345C  38 00 00 00 */	li r0, 0
/* 805D3460  98 1F 06 98 */	stb r0, 0x698(r31)
/* 805D3464  90 1F 06 80 */	stw r0, 0x680(r31)
/* 805D3468  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D346C  90 1F 06 88 */	stw r0, 0x688(r31)
/* 805D3470  90 1F 06 8C */	stw r0, 0x68c(r31)
lbl_805D3474:
/* 805D3474  88 1F 06 9A */	lbz r0, 0x69a(r31)
/* 805D3478  7C 00 00 34 */	cntlzw r0, r0
/* 805D347C  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 805D3480  98 1F 06 9A */	stb r0, 0x69a(r31)
lbl_805D3484:
/* 805D3484  38 60 40 00 */	li r3, 0x4000
/* 805D3488  4B DC 2A 89 */	bl chkTrigger
/* 805D348C  2C 03 00 00 */	cmpwi r3, 0
/* 805D3490  41 82 00 34 */	beq lbl_805D34C4
/* 805D3494  88 1F 06 9A */	lbz r0, 0x69a(r31)
/* 805D3498  28 00 00 01 */	cmplwi r0, 1
/* 805D349C  40 82 00 28 */	bne lbl_805D34C4
/* 805D34A0  38 00 00 00 */	li r0, 0
/* 805D34A4  38 60 04 60 */	li r3, 0x460
/* 805D34A8  98 1F 06 9A */	stb r0, 0x69a(r31)
/* 805D34AC  98 1F 06 98 */	stb r0, 0x698(r31)
/* 805D34B0  90 1F 06 80 */	stw r0, 0x680(r31)
/* 805D34B4  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D34B8  90 1F 06 88 */	stw r0, 0x688(r31)
/* 805D34BC  90 1F 06 8C */	stw r0, 0x68c(r31)
/* 805D34C0  48 05 A8 45 */	bl sAdo_SysTrgStart
lbl_805D34C4:
/* 805D34C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D34C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D34CC  7C 08 03 A6 */	mtlr r0
/* 805D34D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805D34D4  4E 80 00 20 */	blr 
