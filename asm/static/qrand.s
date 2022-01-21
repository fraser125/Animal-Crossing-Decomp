.include "macros.inc"

.section .text

.org 0x8005CCCC

.global qrand
qrand:
/* 8005CCCC 00059C2C  3C 60 00 19 */	lis r3, 0x0019660D@ha
/* 8005CCD0 00059C30  80 8D 82 68 */	lwz r4, __qrand_idum-_SDA_BASE_(r13)
/* 8005CCD4 00059C34  38 03 66 0D */	addi r0, r3, 0x0019660D@l
/* 8005CCD8 00059C38  7C 64 01 D6 */	mullw r3, r4, r0
/* 8005CCDC 00059C3C  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 8005CCE0 00059C40  38 63 F3 5F */	addi r3, r3, -3233
/* 8005CCE4 00059C44  90 6D 82 68 */	stw r3, __qrand_idum-_SDA_BASE_(r13)
/* 8005CCE8 00059C48  4E 80 00 20 */	blr 

.global sqrand
sqrand:
/* 8005CCEC 00059C4C  90 6D 82 68 */	stw r3, __qrand_idum-_SDA_BASE_(r13)
/* 8005CCF0 00059C50  4E 80 00 20 */	blr 

.global fqrand
fqrand:
/* 8005CCF4 00059C54  3C 60 00 19 */	lis r3, 0x0019660D@ha
/* 8005CCF8 00059C58  80 8D 82 68 */	lwz r4, __qrand_idum-_SDA_BASE_(r13)
/* 8005CCFC 00059C5C  38 03 66 0D */	addi r0, r3, 0x0019660D@l
/* 8005CD00 00059C60  C0 02 85 50 */	lfs f0, @14-_SDA2_BASE_(r2)
/* 8005CD04 00059C64  7C 64 01 D6 */	mullw r3, r4, r0
/* 8005CD08 00059C68  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 8005CD0C 00059C6C  38 63 F3 5F */	addi r3, r3, -3233
/* 8005CD10 00059C70  54 60 BA 7E */	srwi r0, r3, 9
/* 8005CD14 00059C74  90 6D 82 68 */	stw r3, __qrand_idum-_SDA_BASE_(r13)
/* 8005CD18 00059C78  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8005CD1C 00059C7C  90 0D 8A C0 */	stw r0, __qrand_itemp-_SDA_BASE_(r13)
/* 8005CD20 00059C80  C0 2D 8A C0 */	lfs f1, __qrand_itemp-_SDA_BASE_(r13)
/* 8005CD24 00059C84  EC 21 00 28 */	fsubs f1, f1, f0
/* 8005CD28 00059C88  4E 80 00 20 */	blr 

.global fqrand2
fqrand2:
/* 8005CD2C 00059C8C  3C 60 00 19 */	lis r3, 0x0019660D@ha
/* 8005CD30 00059C90  80 8D 82 68 */	lwz r4, __qrand_idum-_SDA_BASE_(r13)
/* 8005CD34 00059C94  38 03 66 0D */	addi r0, r3, 0x0019660D@l
/* 8005CD38 00059C98  C0 02 85 54 */	lfs f0, @20-_SDA2_BASE_(r2)
/* 8005CD3C 00059C9C  7C 64 01 D6 */	mullw r3, r4, r0
/* 8005CD40 00059CA0  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 8005CD44 00059CA4  38 63 F3 5F */	addi r3, r3, -3233
/* 8005CD48 00059CA8  54 60 BA 7E */	srwi r0, r3, 9
/* 8005CD4C 00059CAC  90 6D 82 68 */	stw r3, __qrand_idum-_SDA_BASE_(r13)
/* 8005CD50 00059CB0  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8005CD54 00059CB4  90 0D 8A C0 */	stw r0, __qrand_itemp-_SDA_BASE_(r13)
/* 8005CD58 00059CB8  C0 2D 8A C0 */	lfs f1, __qrand_itemp-_SDA_BASE_(r13)
/* 8005CD5C 00059CBC  EC 21 00 28 */	fsubs f1, f1, f0
/* 8005CD60 00059CC0  4E 80 00 20 */	blr 
