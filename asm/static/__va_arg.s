.include "macros.inc"

.section .text

.org 0x8009A9CC

.global __va_arg
__va_arg:
/* 8009A9CC 0009792C  88 E3 00 00 */	lbz r7, 0(r3)
/* 8009A9D0 00097930  2C 04 00 03 */	cmpwi r4, 3
/* 8009A9D4 00097934  7C 66 1B 78 */	mr r6, r3
/* 8009A9D8 00097938  38 00 00 08 */	li r0, 8
/* 8009A9DC 0009793C  39 00 00 04 */	li r8, 4
/* 8009A9E0 00097940  7C E7 07 74 */	extsb r7, r7
/* 8009A9E4 00097944  39 20 00 01 */	li r9, 1
/* 8009A9E8 00097948  38 A0 00 00 */	li r5, 0
/* 8009A9EC 0009794C  39 40 00 00 */	li r10, 0
/* 8009A9F0 00097950  39 60 00 04 */	li r11, 4
/* 8009A9F4 00097954  40 82 00 1C */	bne lbl_8009AA10
/* 8009A9F8 00097958  88 E3 00 01 */	lbz r7, 1(r3)
/* 8009A9FC 0009795C  38 C3 00 01 */	addi r6, r3, 1
/* 8009AA00 00097960  39 00 00 08 */	li r8, 8
/* 8009AA04 00097964  39 40 00 20 */	li r10, 0x20
/* 8009AA08 00097968  7C E7 07 74 */	extsb r7, r7
/* 8009AA0C 0009796C  39 60 00 08 */	li r11, 8
lbl_8009AA10:
/* 8009AA10 00097970  2C 04 00 02 */	cmpwi r4, 2
/* 8009AA14 00097974  40 82 00 1C */	bne lbl_8009AA30
/* 8009AA18 00097978  54 E0 07 FF */	clrlwi. r0, r7, 0x1f
/* 8009AA1C 0009797C  39 00 00 08 */	li r8, 8
/* 8009AA20 00097980  38 00 00 07 */	li r0, 7
/* 8009AA24 00097984  41 82 00 08 */	beq lbl_8009AA2C
/* 8009AA28 00097988  38 A0 00 01 */	li r5, 1
lbl_8009AA2C:
/* 8009AA2C 0009798C  39 20 00 02 */	li r9, 2
lbl_8009AA30:
/* 8009AA30 00097990  7C 07 00 00 */	cmpw r7, r0
/* 8009AA34 00097994  40 80 00 24 */	bge lbl_8009AA58
/* 8009AA38 00097998  7C E7 2A 14 */	add r7, r7, r5
/* 8009AA3C 0009799C  80 A3 00 08 */	lwz r5, 8(r3)
/* 8009AA40 000979A0  7C 67 59 D6 */	mullw r3, r7, r11
/* 8009AA44 000979A4  7C 07 4A 14 */	add r0, r7, r9
/* 8009AA48 000979A8  98 06 00 00 */	stb r0, 0(r6)
/* 8009AA4C 000979AC  7C CA 1A 14 */	add r6, r10, r3
/* 8009AA50 000979B0  7C C5 32 14 */	add r6, r5, r6
/* 8009AA54 000979B4  48 00 00 2C */	b lbl_8009AA80
lbl_8009AA58:
/* 8009AA58 000979B8  38 A0 00 08 */	li r5, 8
/* 8009AA5C 000979BC  38 08 FF FF */	addi r0, r8, -1
/* 8009AA60 000979C0  98 A6 00 00 */	stb r5, 0(r6)
/* 8009AA64 000979C4  7C 06 00 F8 */	nor r6, r0, r0
/* 8009AA68 000979C8  80 03 00 04 */	lwz r0, 4(r3)
/* 8009AA6C 000979CC  7C A8 02 14 */	add r5, r8, r0
/* 8009AA70 000979D0  38 05 FF FF */	addi r0, r5, -1
/* 8009AA74 000979D4  7C C6 00 38 */	and r6, r6, r0
/* 8009AA78 000979D8  7C 06 42 14 */	add r0, r6, r8
/* 8009AA7C 000979DC  90 03 00 04 */	stw r0, 4(r3)
lbl_8009AA80:
/* 8009AA80 000979E0  2C 04 00 00 */	cmpwi r4, 0
/* 8009AA84 000979E4  40 82 00 08 */	bne lbl_8009AA8C
/* 8009AA88 000979E8  80 C6 00 00 */	lwz r6, 0(r6)
lbl_8009AA8C:
/* 8009AA8C 000979EC  7C C3 33 78 */	mr r3, r6
/* 8009AA90 000979F0  4E 80 00 20 */	blr 
