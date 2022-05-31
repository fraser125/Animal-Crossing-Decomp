lbl_8057404C:
/* 8057404C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80574050  7C 08 02 A6 */	mflr r0
/* 80574054  90 01 00 24 */	stw r0, 0x24(r1)
/* 80574058  39 61 00 20 */	addi r11, r1, 0x20
/* 8057405C  4B B2 6E 79 */	bl func_8009AED4
/* 80574060  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80574064  7C 7D 1B 78 */	mr r29, r3
/* 80574068  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8057406C  7C 9E 23 78 */	mr r30, r4
/* 80574070  3F E5 00 02 */	addis r31, r5, 2
/* 80574074  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80574078  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8057407C  7D 89 03 A6 */	mtctr r12
/* 80574080  4E 80 04 21 */	bctrl 
/* 80574084  2C 03 00 01 */	cmpwi r3, 1
/* 80574088  40 82 00 30 */	bne lbl_805740B8
/* 8057408C  3C 60 80 57 */	lis r3, aSEN_schedule_proc@ha /* 0x80574860@ha */
/* 80574090  3C 80 80 6C */	lis r4, ct_data@ha /* 0x806BF6AC@ha */
/* 80574094  38 03 48 60 */	addi r0, r3, aSEN_schedule_proc@l /* 0x80574860@l */
/* 80574098  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 8057409C  38 A4 F6 AC */	addi r5, r4, ct_data@l /* 0x806BF6AC@l */
/* 805740A0  7F A3 EB 78 */	mr r3, r29
/* 805740A4  7F C4 F3 78 */	mr r4, r30
/* 805740A8  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 805740AC  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 805740B0  7D 89 03 A6 */	mtctr r12
/* 805740B4  4E 80 04 21 */	bctrl 
lbl_805740B8:
/* 805740B8  39 61 00 20 */	addi r11, r1, 0x20
/* 805740BC  4B B2 6E 65 */	bl func_8009AF20
/* 805740C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805740C4  7C 08 03 A6 */	mtlr r0
/* 805740C8  38 21 00 20 */	addi r1, r1, 0x20
/* 805740CC  4E 80 00 20 */	blr 
