.include "macros.inc"

.section .text

.org 0x8005F4CC

.global _Printf
_Printf:
/* 8005F4CC 0005C42C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8005F4D0 0005C430  7C 08 02 A6 */	mflr r0
/* 8005F4D4 0005C434  90 01 00 84 */	stw r0, 0x84(r1)
/* 8005F4D8 0005C438  39 61 00 80 */	addi r11, r1, 0x80
/* 8005F4DC 0005C43C  48 03 B9 E5 */	bl func_8009AEC0
/* 8005F4E0 0005C440  38 00 00 00 */	li r0, 0
/* 8005F4E4 0005C444  3C E0 80 0B */	lis r7, fbit$8@ha
/* 8005F4E8 0005C448  90 01 00 54 */	stw r0, 0x54(r1)
/* 8005F4EC 0005C44C  7C 7E 1B 78 */	mr r30, r3
/* 8005F4F0 0005C450  7C 9B 23 78 */	mr r27, r4
/* 8005F4F4 0005C454  7C DC 33 78 */	mr r28, r6
/* 8005F4F8 0005C458  3B A7 B1 58 */	addi r29, r7, fbit$8@l
lbl_8005F4FC:
/* 8005F4FC 0005C45C  8B 45 00 00 */	lbz r26, 0(r5)
/* 8005F500 0005C460  7C BF 2B 78 */	mr r31, r5
/* 8005F504 0005C464  48 00 00 08 */	b lbl_8005F50C
lbl_8005F508:
/* 8005F508 0005C468  8F 5F 00 01 */	lbzu r26, 1(r31)
lbl_8005F50C:
/* 8005F50C 0005C46C  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8005F510 0005C470  41 82 00 0C */	beq lbl_8005F51C
/* 8005F514 0005C474  28 00 00 25 */	cmplwi r0, 0x25
/* 8005F518 0005C478  40 82 FF F0 */	bne lbl_8005F508
lbl_8005F51C:
/* 8005F51C 0005C47C  7F 25 F8 51 */	subf. r25, r5, r31
/* 8005F520 0005C480  41 82 00 3C */	beq lbl_8005F55C
/* 8005F524 0005C484  7F CC F3 78 */	mr r12, r30
/* 8005F528 0005C488  7F 63 DB 78 */	mr r3, r27
/* 8005F52C 0005C48C  7C A4 2B 78 */	mr r4, r5
/* 8005F530 0005C490  7F 25 CB 78 */	mr r5, r25
/* 8005F534 0005C494  7D 89 03 A6 */	mtctr r12
/* 8005F538 0005C498  4E 80 04 21 */	bctrl 
/* 8005F53C 0005C49C  7C 7B 1B 79 */	or. r27, r3, r3
/* 8005F540 0005C4A0  41 82 00 14 */	beq lbl_8005F554
/* 8005F544 0005C4A4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8005F548 0005C4A8  7C 00 CA 14 */	add r0, r0, r25
/* 8005F54C 0005C4AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8005F550 0005C4B0  48 00 00 0C */	b lbl_8005F55C
lbl_8005F554:
/* 8005F554 0005C4B4  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8005F558 0005C4B8  48 00 05 3C */	b lbl_8005FA94
lbl_8005F55C:
/* 8005F55C 0005C4BC  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8005F560 0005C4C0  40 82 00 0C */	bne lbl_8005F56C
/* 8005F564 0005C4C4  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8005F568 0005C4C8  48 00 05 2C */	b lbl_8005FA94
lbl_8005F56C:
/* 8005F56C 0005C4CC  38 00 00 00 */	li r0, 0
/* 8005F570 0005C4D0  3B 22 86 50 */	addi r25, r2, fchar$7-_SDA2_BASE_
/* 8005F574 0005C4D4  90 01 00 58 */	stw r0, 0x58(r1)
/* 8005F578 0005C4D8  3B FF 00 01 */	addi r31, r31, 1
/* 8005F57C 0005C4DC  48 00 00 20 */	b lbl_8005F59C
lbl_8005F580:
/* 8005F580 0005C4E0  7C 19 18 50 */	subf r0, r25, r3
/* 8005F584 0005C4E4  80 61 00 58 */	lwz r3, 0x58(r1)
/* 8005F588 0005C4E8  54 00 10 3A */	slwi r0, r0, 2
/* 8005F58C 0005C4EC  3B FF 00 01 */	addi r31, r31, 1
/* 8005F590 0005C4F0  7C 1D 00 2E */	lwzx r0, r29, r0
/* 8005F594 0005C4F4  7C 60 03 78 */	or r0, r3, r0
/* 8005F598 0005C4F8  90 01 00 58 */	stw r0, 0x58(r1)
lbl_8005F59C:
/* 8005F59C 0005C4FC  88 9F 00 00 */	lbz r4, 0(r31)
/* 8005F5A0 0005C500  38 62 86 50 */	addi r3, r2, fchar$7-_SDA2_BASE_
/* 8005F5A4 0005C504  48 03 FF E9 */	bl strchr
/* 8005F5A8 0005C508  28 03 00 00 */	cmplwi r3, 0
/* 8005F5AC 0005C50C  40 82 FF D4 */	bne lbl_8005F580
/* 8005F5B0 0005C510  88 1F 00 00 */	lbz r0, 0(r31)
/* 8005F5B4 0005C514  28 00 00 2A */	cmplwi r0, 0x2a
/* 8005F5B8 0005C518  40 82 00 3C */	bne lbl_8005F5F4
/* 8005F5BC 0005C51C  7F 83 E3 78 */	mr r3, r28
/* 8005F5C0 0005C520  38 80 00 01 */	li r4, 1
/* 8005F5C4 0005C524  48 03 B4 09 */	bl __va_arg
/* 8005F5C8 0005C528  80 63 00 00 */	lwz r3, 0(r3)
/* 8005F5CC 0005C52C  2C 03 00 00 */	cmpwi r3, 0
/* 8005F5D0 0005C530  90 61 00 50 */	stw r3, 0x50(r1)
/* 8005F5D4 0005C534  40 80 00 18 */	bge lbl_8005F5EC
/* 8005F5D8 0005C538  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8005F5DC 0005C53C  7C 63 00 D0 */	neg r3, r3
/* 8005F5E0 0005C540  90 61 00 50 */	stw r3, 0x50(r1)
/* 8005F5E4 0005C544  60 00 00 04 */	ori r0, r0, 4
/* 8005F5E8 0005C548  90 01 00 58 */	stw r0, 0x58(r1)
lbl_8005F5EC:
/* 8005F5EC 0005C54C  3B FF 00 01 */	addi r31, r31, 1
/* 8005F5F0 0005C550  48 00 00 44 */	b lbl_8005F634
lbl_8005F5F4:
/* 8005F5F4 0005C554  38 00 00 00 */	li r0, 0
/* 8005F5F8 0005C558  90 01 00 50 */	stw r0, 0x50(r1)
/* 8005F5FC 0005C55C  48 00 00 24 */	b lbl_8005F620
lbl_8005F600:
/* 8005F600 0005C560  80 01 00 50 */	lwz r0, 0x50(r1)
/* 8005F604 0005C564  2C 00 03 E7 */	cmpwi r0, 0x3e7
/* 8005F608 0005C568  40 80 00 14 */	bge lbl_8005F61C
/* 8005F60C 0005C56C  1C 60 00 0A */	mulli r3, r0, 0xa
/* 8005F610 0005C570  38 03 FF D0 */	addi r0, r3, -48
/* 8005F614 0005C574  7C 04 02 14 */	add r0, r4, r0
/* 8005F618 0005C578  90 01 00 50 */	stw r0, 0x50(r1)
lbl_8005F61C:
/* 8005F61C 0005C57C  3B FF 00 01 */	addi r31, r31, 1
lbl_8005F620:
/* 8005F620 0005C580  88 9F 00 00 */	lbz r4, 0(r31)
/* 8005F624 0005C584  28 04 00 30 */	cmplwi r4, 0x30
/* 8005F628 0005C588  41 80 00 0C */	blt lbl_8005F634
/* 8005F62C 0005C58C  28 04 00 39 */	cmplwi r4, 0x39
/* 8005F630 0005C590  40 81 FF D0 */	ble lbl_8005F600
lbl_8005F634:
/* 8005F634 0005C594  88 1F 00 00 */	lbz r0, 0(r31)
/* 8005F638 0005C598  28 00 00 2E */	cmplwi r0, 0x2e
/* 8005F63C 0005C59C  41 82 00 10 */	beq lbl_8005F64C
/* 8005F640 0005C5A0  38 00 FF FF */	li r0, -1
/* 8005F644 0005C5A4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8005F648 0005C5A8  48 00 00 6C */	b lbl_8005F6B4
lbl_8005F64C:
/* 8005F64C 0005C5AC  8C 1F 00 01 */	lbzu r0, 1(r31)
/* 8005F650 0005C5B0  28 00 00 2A */	cmplwi r0, 0x2a
/* 8005F654 0005C5B4  40 82 00 20 */	bne lbl_8005F674
/* 8005F658 0005C5B8  7F 83 E3 78 */	mr r3, r28
/* 8005F65C 0005C5BC  38 80 00 01 */	li r4, 1
/* 8005F660 0005C5C0  48 03 B3 6D */	bl __va_arg
/* 8005F664 0005C5C4  80 03 00 00 */	lwz r0, 0(r3)
/* 8005F668 0005C5C8  3B FF 00 01 */	addi r31, r31, 1
/* 8005F66C 0005C5CC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8005F670 0005C5D0  48 00 00 44 */	b lbl_8005F6B4
lbl_8005F674:
/* 8005F674 0005C5D4  38 00 00 00 */	li r0, 0
/* 8005F678 0005C5D8  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8005F67C 0005C5DC  48 00 00 24 */	b lbl_8005F6A0
lbl_8005F680:
/* 8005F680 0005C5E0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8005F684 0005C5E4  2C 00 03 E7 */	cmpwi r0, 0x3e7
/* 8005F688 0005C5E8  40 80 00 14 */	bge lbl_8005F69C
/* 8005F68C 0005C5EC  1C 60 00 0A */	mulli r3, r0, 0xa
/* 8005F690 0005C5F0  38 03 FF D0 */	addi r0, r3, -48
/* 8005F694 0005C5F4  7C 04 02 14 */	add r0, r4, r0
/* 8005F698 0005C5F8  90 01 00 4C */	stw r0, 0x4c(r1)
lbl_8005F69C:
/* 8005F69C 0005C5FC  3B FF 00 01 */	addi r31, r31, 1
lbl_8005F6A0:
/* 8005F6A0 0005C600  88 9F 00 00 */	lbz r4, 0(r31)
/* 8005F6A4 0005C604  28 04 00 30 */	cmplwi r4, 0x30
/* 8005F6A8 0005C608  41 80 00 0C */	blt lbl_8005F6B4
/* 8005F6AC 0005C60C  28 04 00 39 */	cmplwi r4, 0x39
/* 8005F6B0 0005C610  40 81 FF D0 */	ble lbl_8005F680
lbl_8005F6B4:
/* 8005F6B4 0005C614  88 9F 00 00 */	lbz r4, 0(r31)
/* 8005F6B8 0005C618  38 6D 82 88 */	addi r3, r13, @196-_SDA_BASE_
/* 8005F6BC 0005C61C  48 03 FE D1 */	bl strchr
/* 8005F6C0 0005C620  28 03 00 00 */	cmplwi r3, 0
/* 8005F6C4 0005C624  41 82 00 10 */	beq lbl_8005F6D4
/* 8005F6C8 0005C628  88 7F 00 00 */	lbz r3, 0(r31)
/* 8005F6CC 0005C62C  3B FF 00 01 */	addi r31, r31, 1
/* 8005F6D0 0005C630  48 00 00 08 */	b lbl_8005F6D8
lbl_8005F6D4:
/* 8005F6D4 0005C634  38 60 00 00 */	li r3, 0
lbl_8005F6D8:
/* 8005F6D8 0005C638  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8005F6DC 0005C63C  98 61 00 5C */	stb r3, 0x5c(r1)
/* 8005F6E0 0005C640  28 00 00 6C */	cmplwi r0, 0x6c
/* 8005F6E4 0005C644  40 82 00 1C */	bne lbl_8005F700
/* 8005F6E8 0005C648  88 1F 00 00 */	lbz r0, 0(r31)
/* 8005F6EC 0005C64C  28 00 00 6C */	cmplwi r0, 0x6c
/* 8005F6F0 0005C650  40 82 00 10 */	bne lbl_8005F700
/* 8005F6F4 0005C654  38 00 00 4C */	li r0, 0x4c
/* 8005F6F8 0005C658  3B FF 00 01 */	addi r31, r31, 1
/* 8005F6FC 0005C65C  98 01 00 5C */	stb r0, 0x5c(r1)
lbl_8005F700:
/* 8005F700 0005C660  88 BF 00 00 */	lbz r5, 0(r31)
/* 8005F704 0005C664  7F 84 E3 78 */	mr r4, r28
/* 8005F708 0005C668  38 61 00 28 */	addi r3, r1, 0x28
/* 8005F70C 0005C66C  38 C1 00 08 */	addi r6, r1, 8
/* 8005F710 0005C670  48 00 03 9D */	bl _Putfld
/* 8005F714 0005C674  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 8005F718 0005C678  80 01 00 38 */	lwz r0, 0x38(r1)
/* 8005F71C 0005C67C  80 81 00 40 */	lwz r4, 0x40(r1)
/* 8005F720 0005C680  7C 00 1A 14 */	add r0, r0, r3
/* 8005F724 0005C684  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 8005F728 0005C688  7C 60 22 14 */	add r3, r0, r4
/* 8005F72C 0005C68C  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8005F730 0005C690  7C 63 2A 14 */	add r3, r3, r5
/* 8005F734 0005C694  80 81 00 48 */	lwz r4, 0x48(r1)
/* 8005F738 0005C698  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 8005F73C 0005C69C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8005F740 0005C6A0  7C 83 22 14 */	add r4, r3, r4
/* 8005F744 0005C6A4  80 61 00 50 */	lwz r3, 0x50(r1)
/* 8005F748 0005C6A8  7C 85 22 14 */	add r4, r5, r4
/* 8005F74C 0005C6AC  7C 04 18 50 */	subf r0, r4, r3
/* 8005F750 0005C6B0  90 01 00 50 */	stw r0, 0x50(r1)
/* 8005F754 0005C6B4  40 82 00 78 */	bne lbl_8005F7CC
/* 8005F758 0005C6B8  2C 00 00 00 */	cmpwi r0, 0
/* 8005F75C 0005C6BC  40 81 00 70 */	ble lbl_8005F7CC
/* 8005F760 0005C6C0  3C 60 80 0E */	lis r3, spaces@ha
/* 8005F764 0005C6C4  7C 18 03 78 */	mr r24, r0
/* 8005F768 0005C6C8  3B 23 DB 88 */	addi r25, r3, spaces@l
/* 8005F76C 0005C6CC  48 00 00 58 */	b lbl_8005F7C4
lbl_8005F770:
/* 8005F770 0005C6D0  2C 18 00 20 */	cmpwi r24, 0x20
/* 8005F774 0005C6D4  3B 40 00 20 */	li r26, 0x20
/* 8005F778 0005C6D8  41 81 00 08 */	bgt lbl_8005F780
/* 8005F77C 0005C6DC  7F 1A C3 78 */	mr r26, r24
lbl_8005F780:
/* 8005F780 0005C6E0  2C 1A 00 00 */	cmpwi r26, 0
/* 8005F784 0005C6E4  40 81 00 3C */	ble lbl_8005F7C0
/* 8005F788 0005C6E8  7F CC F3 78 */	mr r12, r30
/* 8005F78C 0005C6EC  7F 63 DB 78 */	mr r3, r27
/* 8005F790 0005C6F0  7F 24 CB 78 */	mr r4, r25
/* 8005F794 0005C6F4  7F 45 D3 78 */	mr r5, r26
/* 8005F798 0005C6F8  7D 89 03 A6 */	mtctr r12
/* 8005F79C 0005C6FC  4E 80 04 21 */	bctrl 
/* 8005F7A0 0005C700  7C 7B 1B 79 */	or. r27, r3, r3
/* 8005F7A4 0005C704  41 82 00 14 */	beq lbl_8005F7B8
/* 8005F7A8 0005C708  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8005F7AC 0005C70C  7C 00 D2 14 */	add r0, r0, r26
/* 8005F7B0 0005C710  90 01 00 54 */	stw r0, 0x54(r1)
/* 8005F7B4 0005C714  48 00 00 0C */	b lbl_8005F7C0
lbl_8005F7B8:
/* 8005F7B8 0005C718  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8005F7BC 0005C71C  48 00 02 D8 */	b lbl_8005FA94
lbl_8005F7C0:
/* 8005F7C0 0005C720  7F 1A C0 50 */	subf r24, r26, r24
lbl_8005F7C4:
/* 8005F7C4 0005C724  2C 18 00 00 */	cmpwi r24, 0
/* 8005F7C8 0005C728  41 81 FF A8 */	bgt lbl_8005F770
lbl_8005F7CC:
/* 8005F7CC 0005C72C  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 8005F7D0 0005C730  2C 05 00 00 */	cmpwi r5, 0
/* 8005F7D4 0005C734  40 81 00 3C */	ble lbl_8005F810
/* 8005F7D8 0005C738  7F CC F3 78 */	mr r12, r30
/* 8005F7DC 0005C73C  7F 63 DB 78 */	mr r3, r27
/* 8005F7E0 0005C740  38 81 00 08 */	addi r4, r1, 8
/* 8005F7E4 0005C744  7D 89 03 A6 */	mtctr r12
/* 8005F7E8 0005C748  4E 80 04 21 */	bctrl 
/* 8005F7EC 0005C74C  7C 7B 1B 79 */	or. r27, r3, r3
/* 8005F7F0 0005C750  41 82 00 18 */	beq lbl_8005F808
/* 8005F7F4 0005C754  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8005F7F8 0005C758  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8005F7FC 0005C75C  7C 03 02 14 */	add r0, r3, r0
/* 8005F800 0005C760  90 01 00 54 */	stw r0, 0x54(r1)
/* 8005F804 0005C764  48 00 00 0C */	b lbl_8005F810
lbl_8005F808:
/* 8005F808 0005C768  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8005F80C 0005C76C  48 00 02 88 */	b lbl_8005FA94
lbl_8005F810:
/* 8005F810 0005C770  80 01 00 38 */	lwz r0, 0x38(r1)
/* 8005F814 0005C774  2C 00 00 00 */	cmpwi r0, 0
/* 8005F818 0005C778  40 81 00 70 */	ble lbl_8005F888
/* 8005F81C 0005C77C  3C 60 80 0E */	lis r3, zeroes@ha
/* 8005F820 0005C780  7C 18 03 78 */	mr r24, r0
/* 8005F824 0005C784  3B 23 DB AC */	addi r25, r3, zeroes@l
/* 8005F828 0005C788  48 00 00 58 */	b lbl_8005F880
lbl_8005F82C:
/* 8005F82C 0005C78C  2C 18 00 20 */	cmpwi r24, 0x20
/* 8005F830 0005C790  3B 40 00 20 */	li r26, 0x20
/* 8005F834 0005C794  41 81 00 08 */	bgt lbl_8005F83C
/* 8005F838 0005C798  7F 1A C3 78 */	mr r26, r24
lbl_8005F83C:
/* 8005F83C 0005C79C  2C 1A 00 00 */	cmpwi r26, 0
/* 8005F840 0005C7A0  40 81 00 3C */	ble lbl_8005F87C
/* 8005F844 0005C7A4  7F CC F3 78 */	mr r12, r30
/* 8005F848 0005C7A8  7F 63 DB 78 */	mr r3, r27
/* 8005F84C 0005C7AC  7F 24 CB 78 */	mr r4, r25
/* 8005F850 0005C7B0  7F 45 D3 78 */	mr r5, r26
/* 8005F854 0005C7B4  7D 89 03 A6 */	mtctr r12
/* 8005F858 0005C7B8  4E 80 04 21 */	bctrl 
/* 8005F85C 0005C7BC  7C 7B 1B 79 */	or. r27, r3, r3
/* 8005F860 0005C7C0  41 82 00 14 */	beq lbl_8005F874
/* 8005F864 0005C7C4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8005F868 0005C7C8  7C 00 D2 14 */	add r0, r0, r26
/* 8005F86C 0005C7CC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8005F870 0005C7D0  48 00 00 0C */	b lbl_8005F87C
lbl_8005F874:
/* 8005F874 0005C7D4  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8005F878 0005C7D8  48 00 02 1C */	b lbl_8005FA94
lbl_8005F87C:
/* 8005F87C 0005C7DC  7F 1A C0 50 */	subf r24, r26, r24
lbl_8005F880:
/* 8005F880 0005C7E0  2C 18 00 00 */	cmpwi r24, 0
/* 8005F884 0005C7E4  41 81 FF A8 */	bgt lbl_8005F82C
lbl_8005F888:
/* 8005F888 0005C7E8  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 8005F88C 0005C7EC  2C 05 00 00 */	cmpwi r5, 0
/* 8005F890 0005C7F0  40 81 00 3C */	ble lbl_8005F8CC
/* 8005F894 0005C7F4  7F CC F3 78 */	mr r12, r30
/* 8005F898 0005C7F8  7F 63 DB 78 */	mr r3, r27
/* 8005F89C 0005C7FC  80 81 00 30 */	lwz r4, 0x30(r1)
/* 8005F8A0 0005C800  7D 89 03 A6 */	mtctr r12
/* 8005F8A4 0005C804  4E 80 04 21 */	bctrl 
/* 8005F8A8 0005C808  7C 7B 1B 79 */	or. r27, r3, r3
/* 8005F8AC 0005C80C  41 82 00 18 */	beq lbl_8005F8C4
/* 8005F8B0 0005C810  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8005F8B4 0005C814  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8005F8B8 0005C818  7C 03 02 14 */	add r0, r3, r0
/* 8005F8BC 0005C81C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8005F8C0 0005C820  48 00 00 0C */	b lbl_8005F8CC
lbl_8005F8C4:
/* 8005F8C4 0005C824  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8005F8C8 0005C828  48 00 01 CC */	b lbl_8005FA94
lbl_8005F8CC:
/* 8005F8CC 0005C82C  80 01 00 40 */	lwz r0, 0x40(r1)
/* 8005F8D0 0005C830  2C 00 00 00 */	cmpwi r0, 0
/* 8005F8D4 0005C834  40 81 00 70 */	ble lbl_8005F944
/* 8005F8D8 0005C838  3C 60 80 0E */	lis r3, zeroes@ha
/* 8005F8DC 0005C83C  7C 18 03 78 */	mr r24, r0
/* 8005F8E0 0005C840  3B 23 DB AC */	addi r25, r3, zeroes@l
/* 8005F8E4 0005C844  48 00 00 58 */	b lbl_8005F93C
lbl_8005F8E8:
/* 8005F8E8 0005C848  2C 18 00 20 */	cmpwi r24, 0x20
/* 8005F8EC 0005C84C  3B 40 00 20 */	li r26, 0x20
/* 8005F8F0 0005C850  41 81 00 08 */	bgt lbl_8005F8F8
/* 8005F8F4 0005C854  7F 1A C3 78 */	mr r26, r24
lbl_8005F8F8:
/* 8005F8F8 0005C858  2C 1A 00 00 */	cmpwi r26, 0
/* 8005F8FC 0005C85C  40 81 00 3C */	ble lbl_8005F938
/* 8005F900 0005C860  7F CC F3 78 */	mr r12, r30
/* 8005F904 0005C864  7F 63 DB 78 */	mr r3, r27
/* 8005F908 0005C868  7F 24 CB 78 */	mr r4, r25
/* 8005F90C 0005C86C  7F 45 D3 78 */	mr r5, r26
/* 8005F910 0005C870  7D 89 03 A6 */	mtctr r12
/* 8005F914 0005C874  4E 80 04 21 */	bctrl 
/* 8005F918 0005C878  7C 7B 1B 79 */	or. r27, r3, r3
/* 8005F91C 0005C87C  41 82 00 14 */	beq lbl_8005F930
/* 8005F920 0005C880  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8005F924 0005C884  7C 00 D2 14 */	add r0, r0, r26
/* 8005F928 0005C888  90 01 00 54 */	stw r0, 0x54(r1)
/* 8005F92C 0005C88C  48 00 00 0C */	b lbl_8005F938
lbl_8005F930:
/* 8005F930 0005C890  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8005F934 0005C894  48 00 01 60 */	b lbl_8005FA94
lbl_8005F938:
/* 8005F938 0005C898  7F 1A C0 50 */	subf r24, r26, r24
lbl_8005F93C:
/* 8005F93C 0005C89C  2C 18 00 00 */	cmpwi r24, 0
/* 8005F940 0005C8A0  41 81 FF A8 */	bgt lbl_8005F8E8
lbl_8005F944:
/* 8005F944 0005C8A4  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 8005F948 0005C8A8  2C 05 00 00 */	cmpwi r5, 0
/* 8005F94C 0005C8AC  40 81 00 44 */	ble lbl_8005F990
/* 8005F950 0005C8B0  80 81 00 30 */	lwz r4, 0x30(r1)
/* 8005F954 0005C8B4  7F CC F3 78 */	mr r12, r30
/* 8005F958 0005C8B8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8005F95C 0005C8BC  7F 63 DB 78 */	mr r3, r27
/* 8005F960 0005C8C0  7C 84 02 14 */	add r4, r4, r0
/* 8005F964 0005C8C4  7D 89 03 A6 */	mtctr r12
/* 8005F968 0005C8C8  4E 80 04 21 */	bctrl 
/* 8005F96C 0005C8CC  7C 7B 1B 79 */	or. r27, r3, r3
/* 8005F970 0005C8D0  41 82 00 18 */	beq lbl_8005F988
/* 8005F974 0005C8D4  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8005F978 0005C8D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8005F97C 0005C8DC  7C 03 02 14 */	add r0, r3, r0
/* 8005F980 0005C8E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8005F984 0005C8E4  48 00 00 0C */	b lbl_8005F990
lbl_8005F988:
/* 8005F988 0005C8E8  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8005F98C 0005C8EC  48 00 01 08 */	b lbl_8005FA94
lbl_8005F990:
/* 8005F990 0005C8F0  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8005F994 0005C8F4  2C 00 00 00 */	cmpwi r0, 0
/* 8005F998 0005C8F8  40 81 00 70 */	ble lbl_8005FA08
/* 8005F99C 0005C8FC  3C 60 80 0E */	lis r3, zeroes@ha
/* 8005F9A0 0005C900  7C 18 03 78 */	mr r24, r0
/* 8005F9A4 0005C904  3B 23 DB AC */	addi r25, r3, zeroes@l
/* 8005F9A8 0005C908  48 00 00 58 */	b lbl_8005FA00
lbl_8005F9AC:
/* 8005F9AC 0005C90C  2C 18 00 20 */	cmpwi r24, 0x20
/* 8005F9B0 0005C910  3B 40 00 20 */	li r26, 0x20
/* 8005F9B4 0005C914  41 81 00 08 */	bgt lbl_8005F9BC
/* 8005F9B8 0005C918  7F 1A C3 78 */	mr r26, r24
lbl_8005F9BC:
/* 8005F9BC 0005C91C  2C 1A 00 00 */	cmpwi r26, 0
/* 8005F9C0 0005C920  40 81 00 3C */	ble lbl_8005F9FC
/* 8005F9C4 0005C924  7F CC F3 78 */	mr r12, r30
/* 8005F9C8 0005C928  7F 63 DB 78 */	mr r3, r27
/* 8005F9CC 0005C92C  7F 24 CB 78 */	mr r4, r25
/* 8005F9D0 0005C930  7F 45 D3 78 */	mr r5, r26
/* 8005F9D4 0005C934  7D 89 03 A6 */	mtctr r12
/* 8005F9D8 0005C938  4E 80 04 21 */	bctrl 
/* 8005F9DC 0005C93C  7C 7B 1B 79 */	or. r27, r3, r3
/* 8005F9E0 0005C940  41 82 00 14 */	beq lbl_8005F9F4
/* 8005F9E4 0005C944  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8005F9E8 0005C948  7C 00 D2 14 */	add r0, r0, r26
/* 8005F9EC 0005C94C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8005F9F0 0005C950  48 00 00 0C */	b lbl_8005F9FC
lbl_8005F9F4:
/* 8005F9F4 0005C954  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8005F9F8 0005C958  48 00 00 9C */	b lbl_8005FA94
lbl_8005F9FC:
/* 8005F9FC 0005C95C  7F 1A C0 50 */	subf r24, r26, r24
lbl_8005FA00:
/* 8005FA00 0005C960  2C 18 00 00 */	cmpwi r24, 0
/* 8005FA04 0005C964  41 81 FF A8 */	bgt lbl_8005F9AC
lbl_8005FA08:
/* 8005FA08 0005C968  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8005FA0C 0005C96C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8005FA10 0005C970  41 82 00 7C */	beq lbl_8005FA8C
/* 8005FA14 0005C974  80 01 00 50 */	lwz r0, 0x50(r1)
/* 8005FA18 0005C978  2C 00 00 00 */	cmpwi r0, 0
/* 8005FA1C 0005C97C  40 81 00 70 */	ble lbl_8005FA8C
/* 8005FA20 0005C980  3C 60 80 0E */	lis r3, spaces@ha
/* 8005FA24 0005C984  7C 18 03 78 */	mr r24, r0
/* 8005FA28 0005C988  3B 43 DB 88 */	addi r26, r3, spaces@l
/* 8005FA2C 0005C98C  48 00 00 58 */	b lbl_8005FA84
lbl_8005FA30:
/* 8005FA30 0005C990  2C 18 00 20 */	cmpwi r24, 0x20
/* 8005FA34 0005C994  3B 20 00 20 */	li r25, 0x20
/* 8005FA38 0005C998  41 81 00 08 */	bgt lbl_8005FA40
/* 8005FA3C 0005C99C  7F 19 C3 78 */	mr r25, r24
lbl_8005FA40:
/* 8005FA40 0005C9A0  2C 19 00 00 */	cmpwi r25, 0
/* 8005FA44 0005C9A4  40 81 00 3C */	ble lbl_8005FA80
/* 8005FA48 0005C9A8  7F CC F3 78 */	mr r12, r30
/* 8005FA4C 0005C9AC  7F 63 DB 78 */	mr r3, r27
/* 8005FA50 0005C9B0  7F 44 D3 78 */	mr r4, r26
/* 8005FA54 0005C9B4  7F 25 CB 78 */	mr r5, r25
/* 8005FA58 0005C9B8  7D 89 03 A6 */	mtctr r12
/* 8005FA5C 0005C9BC  4E 80 04 21 */	bctrl 
/* 8005FA60 0005C9C0  7C 7B 1B 79 */	or. r27, r3, r3
/* 8005FA64 0005C9C4  41 82 00 14 */	beq lbl_8005FA78
/* 8005FA68 0005C9C8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8005FA6C 0005C9CC  7C 00 CA 14 */	add r0, r0, r25
/* 8005FA70 0005C9D0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8005FA74 0005C9D4  48 00 00 0C */	b lbl_8005FA80
lbl_8005FA78:
/* 8005FA78 0005C9D8  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8005FA7C 0005C9DC  48 00 00 18 */	b lbl_8005FA94
lbl_8005FA80:
/* 8005FA80 0005C9E0  7F 19 C0 50 */	subf r24, r25, r24
lbl_8005FA84:
/* 8005FA84 0005C9E4  2C 18 00 00 */	cmpwi r24, 0
/* 8005FA88 0005C9E8  41 81 FF A8 */	bgt lbl_8005FA30
lbl_8005FA8C:
/* 8005FA8C 0005C9EC  38 BF 00 01 */	addi r5, r31, 1
/* 8005FA90 0005C9F0  4B FF FA 6C */	b lbl_8005F4FC
lbl_8005FA94:
/* 8005FA94 0005C9F4  39 61 00 80 */	addi r11, r1, 0x80
/* 8005FA98 0005C9F8  48 03 B4 75 */	bl func_8009AF0C
/* 8005FA9C 0005C9FC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8005FAA0 0005CA00  7C 08 03 A6 */	mtlr r0
/* 8005FAA4 0005CA04  38 21 00 80 */	addi r1, r1, 0x80
/* 8005FAA8 0005CA08  4E 80 00 20 */	blr 

.global _Putfld
_Putfld:
/* 8005FAAC 0005CA0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8005FAB0 0005CA10  7C 08 02 A6 */	mflr r0
/* 8005FAB4 0005CA14  90 01 00 24 */	stw r0, 0x24(r1)
/* 8005FAB8 0005CA18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8005FABC 0005CA1C  7C DF 33 78 */	mr r31, r6
/* 8005FAC0 0005CA20  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8005FAC4 0005CA24  7C BE 2B 78 */	mr r30, r5
/* 8005FAC8 0005CA28  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8005FACC 0005CA2C  7C 7D 1B 78 */	mr r29, r3
/* 8005FAD0 0005CA30  93 81 00 10 */	stw r28, 0x10(r1)
/* 8005FAD4 0005CA34  3B 80 00 00 */	li r28, 0
/* 8005FAD8 0005CA38  93 83 00 20 */	stw r28, 0x20(r3)
/* 8005FADC 0005CA3C  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 8005FAE0 0005CA40  38 03 FF DB */	addi r0, r3, -37
/* 8005FAE4 0005CA44  93 9D 00 1C */	stw r28, 0x1c(r29)
/* 8005FAE8 0005CA48  28 00 00 53 */	cmplwi r0, 0x53
/* 8005FAEC 0005CA4C  93 9D 00 18 */	stw r28, 0x18(r29)
/* 8005FAF0 0005CA50  93 9D 00 14 */	stw r28, 0x14(r29)
/* 8005FAF4 0005CA54  93 9D 00 10 */	stw r28, 0x10(r29)
/* 8005FAF8 0005CA58  93 9D 00 0C */	stw r28, 0xc(r29)
/* 8005FAFC 0005CA5C  41 81 04 48 */	bgt lbl_8005FF44
/* 8005FB00 0005CA60  3C 60 80 0E */	lis r3, @282@ha
/* 8005FB04 0005CA64  54 00 10 3A */	slwi r0, r0, 2
/* 8005FB08 0005CA68  38 63 DB D0 */	addi r3, r3, @282@l
/* 8005FB0C 0005CA6C  7C 03 00 2E */	lwzx r0, r3, r0
/* 8005FB10 0005CA70  7C 09 03 A6 */	mtctr r0
/* 8005FB14 0005CA74  4E 80 04 20 */	bctr 
/* 8005FB18 0005CA78  7C 83 23 78 */	mr r3, r4
/* 8005FB1C 0005CA7C  38 80 00 01 */	li r4, 1
/* 8005FB20 0005CA80  48 03 AE AD */	bl __va_arg
/* 8005FB24 0005CA84  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8005FB28 0005CA88  80 63 00 00 */	lwz r3, 0(r3)
/* 8005FB2C 0005CA8C  38 04 00 01 */	addi r0, r4, 1
/* 8005FB30 0005CA90  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8005FB34 0005CA94  7C 7F 21 AE */	stbx r3, r31, r4
/* 8005FB38 0005CA98  48 00 04 1C */	b lbl_8005FF54
/* 8005FB3C 0005CA9C  88 1D 00 34 */	lbz r0, 0x34(r29)
/* 8005FB40 0005CAA0  28 00 00 6C */	cmplwi r0, 0x6c
/* 8005FB44 0005CAA4  40 82 00 24 */	bne lbl_8005FB68
/* 8005FB48 0005CAA8  7C 83 23 78 */	mr r3, r4
/* 8005FB4C 0005CAAC  38 80 00 01 */	li r4, 1
/* 8005FB50 0005CAB0  48 03 AE 7D */	bl __va_arg
/* 8005FB54 0005CAB4  80 03 00 00 */	lwz r0, 0(r3)
/* 8005FB58 0005CAB8  90 1D 00 04 */	stw r0, 4(r29)
/* 8005FB5C 0005CABC  7C 00 FE 70 */	srawi r0, r0, 0x1f
/* 8005FB60 0005CAC0  90 1D 00 00 */	stw r0, 0(r29)
/* 8005FB64 0005CAC4  48 00 00 48 */	b lbl_8005FBAC
lbl_8005FB68:
/* 8005FB68 0005CAC8  28 00 00 4C */	cmplwi r0, 0x4c
/* 8005FB6C 0005CACC  40 82 00 24 */	bne lbl_8005FB90
/* 8005FB70 0005CAD0  7C 83 23 78 */	mr r3, r4
/* 8005FB74 0005CAD4  38 80 00 02 */	li r4, 2
/* 8005FB78 0005CAD8  48 03 AE 55 */	bl __va_arg
/* 8005FB7C 0005CADC  80 03 00 00 */	lwz r0, 0(r3)
/* 8005FB80 0005CAE0  80 63 00 04 */	lwz r3, 4(r3)
/* 8005FB84 0005CAE4  90 7D 00 04 */	stw r3, 4(r29)
/* 8005FB88 0005CAE8  90 1D 00 00 */	stw r0, 0(r29)
/* 8005FB8C 0005CAEC  48 00 00 20 */	b lbl_8005FBAC
lbl_8005FB90:
/* 8005FB90 0005CAF0  7C 83 23 78 */	mr r3, r4
/* 8005FB94 0005CAF4  38 80 00 01 */	li r4, 1
/* 8005FB98 0005CAF8  48 03 AE 35 */	bl __va_arg
/* 8005FB9C 0005CAFC  80 03 00 00 */	lwz r0, 0(r3)
/* 8005FBA0 0005CB00  90 1D 00 04 */	stw r0, 4(r29)
/* 8005FBA4 0005CB04  7C 00 FE 70 */	srawi r0, r0, 0x1f
/* 8005FBA8 0005CB08  90 1D 00 00 */	stw r0, 0(r29)
lbl_8005FBAC:
/* 8005FBAC 0005CB0C  88 1D 00 34 */	lbz r0, 0x34(r29)
/* 8005FBB0 0005CB10  28 00 00 68 */	cmplwi r0, 0x68
/* 8005FBB4 0005CB14  40 82 00 18 */	bne lbl_8005FBCC
/* 8005FBB8 0005CB18  80 1D 00 04 */	lwz r0, 4(r29)
/* 8005FBBC 0005CB1C  7C 00 07 34 */	extsh r0, r0
/* 8005FBC0 0005CB20  90 1D 00 04 */	stw r0, 4(r29)
/* 8005FBC4 0005CB24  7C 00 FE 70 */	srawi r0, r0, 0x1f
/* 8005FBC8 0005CB28  90 1D 00 00 */	stw r0, 0(r29)
lbl_8005FBCC:
/* 8005FBCC 0005CB2C  80 9D 00 00 */	lwz r4, 0(r29)
/* 8005FBD0 0005CB30  38 00 00 00 */	li r0, 0
/* 8005FBD4 0005CB34  80 BD 00 04 */	lwz r5, 4(r29)
/* 8005FBD8 0005CB38  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8005FBDC 0005CB3C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8005FBE0 0005CB40  7C 00 28 10 */	subfc r0, r0, r5
/* 8005FBE4 0005CB44  7C 63 21 10 */	subfe r3, r3, r4
/* 8005FBE8 0005CB48  7C 64 21 10 */	subfe r3, r4, r4
/* 8005FBEC 0005CB4C  7C 63 00 D1 */	neg. r3, r3
/* 8005FBF0 0005CB50  41 82 00 1C */	beq lbl_8005FC0C
/* 8005FBF4 0005CB54  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8005FBF8 0005CB58  38 80 00 2D */	li r4, 0x2d
/* 8005FBFC 0005CB5C  38 03 00 01 */	addi r0, r3, 1
/* 8005FC00 0005CB60  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8005FC04 0005CB64  7C 9F 19 AE */	stbx r4, r31, r3
/* 8005FC08 0005CB68  48 00 00 44 */	b lbl_8005FC4C
lbl_8005FC0C:
/* 8005FC0C 0005CB6C  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 8005FC10 0005CB70  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8005FC14 0005CB74  41 82 00 1C */	beq lbl_8005FC30
/* 8005FC18 0005CB78  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8005FC1C 0005CB7C  38 80 00 2B */	li r4, 0x2b
/* 8005FC20 0005CB80  38 03 00 01 */	addi r0, r3, 1
/* 8005FC24 0005CB84  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8005FC28 0005CB88  7C 9F 19 AE */	stbx r4, r31, r3
/* 8005FC2C 0005CB8C  48 00 00 20 */	b lbl_8005FC4C
lbl_8005FC30:
/* 8005FC30 0005CB90  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8005FC34 0005CB94  41 82 00 18 */	beq lbl_8005FC4C
/* 8005FC38 0005CB98  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8005FC3C 0005CB9C  38 80 00 20 */	li r4, 0x20
/* 8005FC40 0005CBA0  38 03 00 01 */	addi r0, r3, 1
/* 8005FC44 0005CBA4  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8005FC48 0005CBA8  7C 9F 19 AE */	stbx r4, r31, r3
lbl_8005FC4C:
/* 8005FC4C 0005CBAC  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8005FC50 0005CBB0  7F A3 EB 78 */	mr r3, r29
/* 8005FC54 0005CBB4  7F C4 F3 78 */	mr r4, r30
/* 8005FC58 0005CBB8  7C 1F 02 14 */	add r0, r31, r0
/* 8005FC5C 0005CBBC  90 1D 00 08 */	stw r0, 8(r29)
/* 8005FC60 0005CBC0  4B FF F6 41 */	bl _Litob
/* 8005FC64 0005CBC4  48 00 02 F0 */	b lbl_8005FF54
/* 8005FC68 0005CBC8  88 1D 00 34 */	lbz r0, 0x34(r29)
/* 8005FC6C 0005CBCC  28 00 00 6C */	cmplwi r0, 0x6c
/* 8005FC70 0005CBD0  40 82 00 24 */	bne lbl_8005FC94
/* 8005FC74 0005CBD4  7C 83 23 78 */	mr r3, r4
/* 8005FC78 0005CBD8  38 80 00 01 */	li r4, 1
/* 8005FC7C 0005CBDC  48 03 AD 51 */	bl __va_arg
/* 8005FC80 0005CBE0  80 03 00 00 */	lwz r0, 0(r3)
/* 8005FC84 0005CBE4  90 1D 00 04 */	stw r0, 4(r29)
/* 8005FC88 0005CBE8  7C 00 FE 70 */	srawi r0, r0, 0x1f
/* 8005FC8C 0005CBEC  90 1D 00 00 */	stw r0, 0(r29)
/* 8005FC90 0005CBF0  48 00 00 48 */	b lbl_8005FCD8
lbl_8005FC94:
/* 8005FC94 0005CBF4  28 00 00 4C */	cmplwi r0, 0x4c
/* 8005FC98 0005CBF8  40 82 00 24 */	bne lbl_8005FCBC
/* 8005FC9C 0005CBFC  7C 83 23 78 */	mr r3, r4
/* 8005FCA0 0005CC00  38 80 00 02 */	li r4, 2
/* 8005FCA4 0005CC04  48 03 AD 29 */	bl __va_arg
/* 8005FCA8 0005CC08  80 03 00 00 */	lwz r0, 0(r3)
/* 8005FCAC 0005CC0C  80 63 00 04 */	lwz r3, 4(r3)
/* 8005FCB0 0005CC10  90 7D 00 04 */	stw r3, 4(r29)
/* 8005FCB4 0005CC14  90 1D 00 00 */	stw r0, 0(r29)
/* 8005FCB8 0005CC18  48 00 00 20 */	b lbl_8005FCD8
lbl_8005FCBC:
/* 8005FCBC 0005CC1C  7C 83 23 78 */	mr r3, r4
/* 8005FCC0 0005CC20  38 80 00 01 */	li r4, 1
/* 8005FCC4 0005CC24  48 03 AD 09 */	bl __va_arg
/* 8005FCC8 0005CC28  80 03 00 00 */	lwz r0, 0(r3)
/* 8005FCCC 0005CC2C  90 1D 00 04 */	stw r0, 4(r29)
/* 8005FCD0 0005CC30  7C 00 FE 70 */	srawi r0, r0, 0x1f
/* 8005FCD4 0005CC34  90 1D 00 00 */	stw r0, 0(r29)
lbl_8005FCD8:
/* 8005FCD8 0005CC38  88 1D 00 34 */	lbz r0, 0x34(r29)
/* 8005FCDC 0005CC3C  28 00 00 68 */	cmplwi r0, 0x68
/* 8005FCE0 0005CC40  40 82 00 1C */	bne lbl_8005FCFC
/* 8005FCE4 0005CC44  80 7D 00 04 */	lwz r3, 4(r29)
/* 8005FCE8 0005CC48  38 00 00 00 */	li r0, 0
/* 8005FCEC 0005CC4C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8005FCF0 0005CC50  90 7D 00 04 */	stw r3, 4(r29)
/* 8005FCF4 0005CC54  90 1D 00 00 */	stw r0, 0(r29)
/* 8005FCF8 0005CC58  48 00 00 14 */	b lbl_8005FD0C
lbl_8005FCFC:
/* 8005FCFC 0005CC5C  28 00 00 00 */	cmplwi r0, 0
/* 8005FD00 0005CC60  40 82 00 0C */	bne lbl_8005FD0C
/* 8005FD04 0005CC64  38 00 00 00 */	li r0, 0
/* 8005FD08 0005CC68  90 1D 00 00 */	stw r0, 0(r29)
lbl_8005FD0C:
/* 8005FD0C 0005CC6C  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 8005FD10 0005CC70  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8005FD14 0005CC74  41 82 00 3C */	beq lbl_8005FD50
/* 8005FD18 0005CC78  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8005FD1C 0005CC7C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8005FD20 0005CC80  28 00 00 78 */	cmplwi r0, 0x78
/* 8005FD24 0005CC84  38 A0 00 30 */	li r5, 0x30
/* 8005FD28 0005CC88  38 64 00 01 */	addi r3, r4, 1
/* 8005FD2C 0005CC8C  90 7D 00 0C */	stw r3, 0xc(r29)
/* 8005FD30 0005CC90  7C BF 21 AE */	stbx r5, r31, r4
/* 8005FD34 0005CC94  41 82 00 0C */	beq lbl_8005FD40
/* 8005FD38 0005CC98  28 00 00 58 */	cmplwi r0, 0x58
/* 8005FD3C 0005CC9C  40 82 00 14 */	bne lbl_8005FD50
lbl_8005FD40:
/* 8005FD40 0005CCA0  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8005FD44 0005CCA4  38 03 00 01 */	addi r0, r3, 1
/* 8005FD48 0005CCA8  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8005FD4C 0005CCAC  7F DF 19 AE */	stbx r30, r31, r3
lbl_8005FD50:
/* 8005FD50 0005CCB0  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8005FD54 0005CCB4  7F A3 EB 78 */	mr r3, r29
/* 8005FD58 0005CCB8  7F C4 F3 78 */	mr r4, r30
/* 8005FD5C 0005CCBC  7C 1F 02 14 */	add r0, r31, r0
/* 8005FD60 0005CCC0  90 1D 00 08 */	stw r0, 8(r29)
/* 8005FD64 0005CCC4  4B FF F5 3D */	bl _Litob
/* 8005FD68 0005CCC8  48 00 01 EC */	b lbl_8005FF54
/* 8005FD6C 0005CCCC  88 1D 00 34 */	lbz r0, 0x34(r29)
/* 8005FD70 0005CCD0  28 00 00 4C */	cmplwi r0, 0x4c
/* 8005FD74 0005CCD4  40 82 00 18 */	bne lbl_8005FD8C
/* 8005FD78 0005CCD8  7C 83 23 78 */	mr r3, r4
/* 8005FD7C 0005CCDC  38 80 00 03 */	li r4, 3
/* 8005FD80 0005CCE0  48 03 AC 4D */	bl __va_arg
/* 8005FD84 0005CCE4  C8 03 00 00 */	lfd f0, 0(r3)
/* 8005FD88 0005CCE8  48 00 00 14 */	b lbl_8005FD9C
lbl_8005FD8C:
/* 8005FD8C 0005CCEC  7C 83 23 78 */	mr r3, r4
/* 8005FD90 0005CCF0  38 80 00 03 */	li r4, 3
/* 8005FD94 0005CCF4  48 03 AC 39 */	bl __va_arg
/* 8005FD98 0005CCF8  C8 03 00 00 */	lfd f0, 0(r3)
lbl_8005FD9C:
/* 8005FD9C 0005CCFC  D8 1D 00 00 */	stfd f0, 0(r29)
/* 8005FDA0 0005CD00  A0 1D 00 00 */	lhz r0, 0(r29)
/* 8005FDA4 0005CD04  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 8005FDA8 0005CD08  41 82 00 1C */	beq lbl_8005FDC4
/* 8005FDAC 0005CD0C  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8005FDB0 0005CD10  38 80 00 2D */	li r4, 0x2d
/* 8005FDB4 0005CD14  38 03 00 01 */	addi r0, r3, 1
/* 8005FDB8 0005CD18  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8005FDBC 0005CD1C  7C 9F 19 AE */	stbx r4, r31, r3
/* 8005FDC0 0005CD20  48 00 00 44 */	b lbl_8005FE04
lbl_8005FDC4:
/* 8005FDC4 0005CD24  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 8005FDC8 0005CD28  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8005FDCC 0005CD2C  41 82 00 1C */	beq lbl_8005FDE8
/* 8005FDD0 0005CD30  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8005FDD4 0005CD34  38 80 00 2B */	li r4, 0x2b
/* 8005FDD8 0005CD38  38 03 00 01 */	addi r0, r3, 1
/* 8005FDDC 0005CD3C  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8005FDE0 0005CD40  7C 9F 19 AE */	stbx r4, r31, r3
/* 8005FDE4 0005CD44  48 00 00 20 */	b lbl_8005FE04
lbl_8005FDE8:
/* 8005FDE8 0005CD48  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8005FDEC 0005CD4C  41 82 00 18 */	beq lbl_8005FE04
/* 8005FDF0 0005CD50  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8005FDF4 0005CD54  38 80 00 20 */	li r4, 0x20
/* 8005FDF8 0005CD58  38 03 00 01 */	addi r0, r3, 1
/* 8005FDFC 0005CD5C  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8005FE00 0005CD60  7C 9F 19 AE */	stbx r4, r31, r3
lbl_8005FE04:
/* 8005FE04 0005CD64  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8005FE08 0005CD68  7F A3 EB 78 */	mr r3, r29
/* 8005FE0C 0005CD6C  7F C4 F3 78 */	mr r4, r30
/* 8005FE10 0005CD70  7C 1F 02 14 */	add r0, r31, r0
/* 8005FE14 0005CD74  90 1D 00 08 */	stw r0, 8(r29)
/* 8005FE18 0005CD78  4B FF EB 01 */	bl _Ldtob
/* 8005FE1C 0005CD7C  48 00 01 38 */	b lbl_8005FF54
/* 8005FE20 0005CD80  88 1D 00 34 */	lbz r0, 0x34(r29)
/* 8005FE24 0005CD84  28 00 00 68 */	cmplwi r0, 0x68
/* 8005FE28 0005CD88  40 82 00 24 */	bne lbl_8005FE4C
/* 8005FE2C 0005CD8C  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 8005FE30 0005CD90  7C 83 23 78 */	mr r3, r4
/* 8005FE34 0005CD94  38 80 00 01 */	li r4, 1
/* 8005FE38 0005CD98  7C 1D 07 34 */	extsh r29, r0
/* 8005FE3C 0005CD9C  48 03 AB 91 */	bl __va_arg
/* 8005FE40 0005CDA0  80 63 00 00 */	lwz r3, 0(r3)
/* 8005FE44 0005CDA4  B3 A3 00 00 */	sth r29, 0(r3)
/* 8005FE48 0005CDA8  48 00 01 0C */	b lbl_8005FF54
lbl_8005FE4C:
/* 8005FE4C 0005CDAC  28 00 00 6C */	cmplwi r0, 0x6c
/* 8005FE50 0005CDB0  40 82 00 20 */	bne lbl_8005FE70
/* 8005FE54 0005CDB4  83 BD 00 2C */	lwz r29, 0x2c(r29)
/* 8005FE58 0005CDB8  7C 83 23 78 */	mr r3, r4
/* 8005FE5C 0005CDBC  38 80 00 01 */	li r4, 1
/* 8005FE60 0005CDC0  48 03 AB 6D */	bl __va_arg
/* 8005FE64 0005CDC4  80 63 00 00 */	lwz r3, 0(r3)
/* 8005FE68 0005CDC8  93 A3 00 00 */	stw r29, 0(r3)
/* 8005FE6C 0005CDCC  48 00 00 E8 */	b lbl_8005FF54
lbl_8005FE70:
/* 8005FE70 0005CDD0  28 00 00 4C */	cmplwi r0, 0x4c
/* 8005FE74 0005CDD4  40 82 00 24 */	bne lbl_8005FE98
/* 8005FE78 0005CDD8  83 BD 00 2C */	lwz r29, 0x2c(r29)
/* 8005FE7C 0005CDDC  7C 83 23 78 */	mr r3, r4
/* 8005FE80 0005CDE0  38 80 00 01 */	li r4, 1
/* 8005FE84 0005CDE4  48 03 AB 49 */	bl __va_arg
/* 8005FE88 0005CDE8  80 63 00 00 */	lwz r3, 0(r3)
/* 8005FE8C 0005CDEC  93 A3 00 04 */	stw r29, 4(r3)
/* 8005FE90 0005CDF0  93 83 00 00 */	stw r28, 0(r3)
/* 8005FE94 0005CDF4  48 00 00 C0 */	b lbl_8005FF54
lbl_8005FE98:
/* 8005FE98 0005CDF8  83 BD 00 2C */	lwz r29, 0x2c(r29)
/* 8005FE9C 0005CDFC  7C 83 23 78 */	mr r3, r4
/* 8005FEA0 0005CE00  38 80 00 01 */	li r4, 1
/* 8005FEA4 0005CE04  48 03 AB 29 */	bl __va_arg
/* 8005FEA8 0005CE08  80 63 00 00 */	lwz r3, 0(r3)
/* 8005FEAC 0005CE0C  93 A3 00 00 */	stw r29, 0(r3)
/* 8005FEB0 0005CE10  48 00 00 A4 */	b lbl_8005FF54
/* 8005FEB4 0005CE14  7C 83 23 78 */	mr r3, r4
/* 8005FEB8 0005CE18  38 80 00 01 */	li r4, 1
/* 8005FEBC 0005CE1C  48 03 AB 11 */	bl __va_arg
/* 8005FEC0 0005CE20  80 03 00 00 */	lwz r0, 0(r3)
/* 8005FEC4 0005CE24  7F A3 EB 78 */	mr r3, r29
/* 8005FEC8 0005CE28  38 80 00 78 */	li r4, 0x78
/* 8005FECC 0005CE2C  90 1D 00 04 */	stw r0, 4(r29)
/* 8005FED0 0005CE30  7C 00 FE 70 */	srawi r0, r0, 0x1f
/* 8005FED4 0005CE34  90 1D 00 00 */	stw r0, 0(r29)
/* 8005FED8 0005CE38  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8005FEDC 0005CE3C  7C 1F 02 14 */	add r0, r31, r0
/* 8005FEE0 0005CE40  90 1D 00 08 */	stw r0, 8(r29)
/* 8005FEE4 0005CE44  4B FF F3 BD */	bl _Litob
/* 8005FEE8 0005CE48  48 00 00 6C */	b lbl_8005FF54
/* 8005FEEC 0005CE4C  7C 83 23 78 */	mr r3, r4
/* 8005FEF0 0005CE50  38 80 00 01 */	li r4, 1
/* 8005FEF4 0005CE54  48 03 AA D9 */	bl __va_arg
/* 8005FEF8 0005CE58  80 03 00 00 */	lwz r0, 0(r3)
/* 8005FEFC 0005CE5C  90 1D 00 08 */	stw r0, 8(r29)
/* 8005FF00 0005CE60  80 7D 00 08 */	lwz r3, 8(r29)
/* 8005FF04 0005CE64  48 03 F9 49 */	bl strlen
/* 8005FF08 0005CE68  90 7D 00 14 */	stw r3, 0x14(r29)
/* 8005FF0C 0005CE6C  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 8005FF10 0005CE70  2C 03 00 00 */	cmpwi r3, 0
/* 8005FF14 0005CE74  41 80 00 40 */	blt lbl_8005FF54
/* 8005FF18 0005CE78  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 8005FF1C 0005CE7C  7C 03 00 00 */	cmpw r3, r0
/* 8005FF20 0005CE80  40 80 00 34 */	bge lbl_8005FF54
/* 8005FF24 0005CE84  90 7D 00 14 */	stw r3, 0x14(r29)
/* 8005FF28 0005CE88  48 00 00 2C */	b lbl_8005FF54
/* 8005FF2C 0005CE8C  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8005FF30 0005CE90  38 80 00 25 */	li r4, 0x25
/* 8005FF34 0005CE94  38 03 00 01 */	addi r0, r3, 1
/* 8005FF38 0005CE98  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8005FF3C 0005CE9C  7C 9F 19 AE */	stbx r4, r31, r3
/* 8005FF40 0005CEA0  48 00 00 14 */	b lbl_8005FF54
lbl_8005FF44:
/* 8005FF44 0005CEA4  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8005FF48 0005CEA8  38 03 00 01 */	addi r0, r3, 1
/* 8005FF4C 0005CEAC  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8005FF50 0005CEB0  7F DF 19 AE */	stbx r30, r31, r3
lbl_8005FF54:
/* 8005FF54 0005CEB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8005FF58 0005CEB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8005FF5C 0005CEBC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8005FF60 0005CEC0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8005FF64 0005CEC4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8005FF68 0005CEC8  7C 08 03 A6 */	mtlr r0
/* 8005FF6C 0005CECC  38 21 00 20 */	addi r1, r1, 0x20
/* 8005FF70 0005CED0  4E 80 00 20 */	blr 